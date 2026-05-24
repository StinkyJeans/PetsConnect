-- =============================================================
-- PetsConnect - Initial Schema
-- =============================================================
-- Enable required extensions
create extension if not exists "uuid-ossp";
create extension if not exists "postgis";

-- =============================================================
-- ENUMS
-- =============================================================

create type animal_type as enum (
  'dog', 'cat', 'bird', 'reptile', 'fish', 'rabbit',
  'hamster', 'guinea_pig', 'horse', 'other'
);

create type post_type as enum ('photo', 'video', 'story');

create type listing_status as enum ('active', 'sold', 'archived');

create type adoption_status as enum ('available', 'pending', 'adopted');

create type adoption_request_status as enum ('pending', 'approved', 'rejected', 'withdrawn');

create type rescue_urgency as enum ('critical', 'needs_help', 'safe_now');

create type rescue_status as enum ('open', 'rescued', 'in_care', 'rehomed', 'closed');

create type conversation_type as enum ('direct', 'group');

create type message_type as enum ('text', 'image', 'file', 'system');

create type pet_size as enum ('tiny', 'small', 'medium', 'large', 'extra_large');

create type pet_gender as enum ('male', 'female', 'unknown');

-- =============================================================
-- PROFILES
-- =============================================================

create table profiles (
  id            uuid primary key references auth.users(id) on delete cascade,
  username      text unique not null,
  display_name  text,
  bio           text,
  avatar_url    text,
  website       text,
  location      text,
  is_shelter    boolean default false,
  is_verified   boolean default false,
  fcm_token     text,
  created_at    timestamptz default now(),
  updated_at    timestamptz default now()
);

-- =============================================================
-- PET PROFILES
-- =============================================================

create table pet_profiles (
  id           uuid primary key default uuid_generate_v4(),
  owner_id     uuid not null references profiles(id) on delete cascade,
  name         text not null,
  animal_type  animal_type not null,
  breed        text,
  age_years    int,
  age_months   int,
  gender       pet_gender default 'unknown',
  size         pet_size,
  bio          text,
  avatar_url   text,
  is_public    boolean default true,
  created_at   timestamptz default now(),
  updated_at   timestamptz default now()
);

-- =============================================================
-- FOLLOWS
-- =============================================================

create table follows (
  follower_id  uuid not null references profiles(id) on delete cascade,
  following_id uuid not null references profiles(id) on delete cascade,
  created_at   timestamptz default now(),
  primary key (follower_id, following_id),
  check (follower_id <> following_id)
);

-- =============================================================
-- POSTS
-- =============================================================

create table posts (
  id           uuid primary key default uuid_generate_v4(),
  user_id      uuid not null references profiles(id) on delete cascade,
  pet_id       uuid references pet_profiles(id) on delete set null,
  post_type    post_type default 'photo',
  caption      text,
  location     text,
  animal_types animal_type[],
  hashtags     text[],
  is_archived  boolean default false,
  expires_at   timestamptz, -- for stories
  created_at   timestamptz default now(),
  updated_at   timestamptz default now()
);

create table post_media (
  id         uuid primary key default uuid_generate_v4(),
  post_id    uuid not null references posts(id) on delete cascade,
  url        text not null,
  media_type text not null check (media_type in ('image', 'video')),
  width      int,
  height     int,
  duration   int, -- seconds, for video
  position   int default 0,
  created_at timestamptz default now()
);

create table post_likes (
  post_id    uuid not null references posts(id) on delete cascade,
  user_id    uuid not null references profiles(id) on delete cascade,
  created_at timestamptz default now(),
  primary key (post_id, user_id)
);

create table post_comments (
  id         uuid primary key default uuid_generate_v4(),
  post_id    uuid not null references posts(id) on delete cascade,
  user_id    uuid not null references profiles(id) on delete cascade,
  parent_id  uuid references post_comments(id) on delete cascade,
  body       text not null,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table post_saves (
  post_id    uuid not null references posts(id) on delete cascade,
  user_id    uuid not null references profiles(id) on delete cascade,
  created_at timestamptz default now(),
  primary key (post_id, user_id)
);

-- =============================================================
-- MARKETPLACE
-- =============================================================

create table listing_categories (
  id         uuid primary key default uuid_generate_v4(),
  name       text not null unique,
  slug       text not null unique,
  icon_name  text,
  sort_order int default 0
);

create table marketplace_listings (
  id           uuid primary key default uuid_generate_v4(),
  seller_id    uuid not null references profiles(id) on delete cascade,
  category_id  uuid references listing_categories(id) on delete set null,
  title        text not null,
  description  text,
  price        numeric(10,2) not null check (price >= 0),
  currency     text default 'PHP',
  animal_types animal_type[],
  condition    text check (condition in ('new', 'like_new', 'good', 'fair')),
  location     text,
  status       listing_status default 'active',
  is_boosted   boolean default false,
  boost_until  timestamptz,
  views        int default 0,
  created_at   timestamptz default now(),
  updated_at   timestamptz default now()
);

create table listing_images (
  id         uuid primary key default uuid_generate_v4(),
  listing_id uuid not null references marketplace_listings(id) on delete cascade,
  url        text not null,
  position   int default 0,
  created_at timestamptz default now()
);

create table listing_reviews (
  id          uuid primary key default uuid_generate_v4(),
  listing_id  uuid not null references marketplace_listings(id) on delete cascade,
  reviewer_id uuid not null references profiles(id) on delete cascade,
  seller_id   uuid not null references profiles(id) on delete cascade,
  rating      int not null check (rating between 1 and 5),
  body        text,
  created_at  timestamptz default now(),
  unique (listing_id, reviewer_id)
);

create table orders (
  id              uuid primary key default uuid_generate_v4(),
  buyer_id        uuid not null references profiles(id) on delete cascade,
  seller_id       uuid not null references profiles(id) on delete cascade,
  listing_id      uuid not null references marketplace_listings(id) on delete restrict,
  quantity        int default 1 check (quantity > 0),
  unit_price      numeric(10,2) not null,
  total_price     numeric(10,2) not null,
  currency        text default 'PHP',
  status          text default 'pending' check (status in ('pending','paid','shipped','completed','cancelled','refunded')),
  payment_ref     text,
  payment_gateway text,
  shipping_address jsonb,
  created_at      timestamptz default now(),
  updated_at      timestamptz default now()
);

-- =============================================================
-- ADOPTION
-- =============================================================

create table adoption_listings (
  id               uuid primary key default uuid_generate_v4(),
  poster_id        uuid not null references profiles(id) on delete cascade,
  pet_name         text not null,
  animal_type      animal_type not null,
  breed            text,
  age_years        int,
  age_months       int,
  gender           pet_gender default 'unknown',
  size             pet_size,
  description      text,
  health_notes     text,
  is_vaccinated    boolean default false,
  is_neutered      boolean default false,
  location         text,
  status           adoption_status default 'available',
  created_at       timestamptz default now(),
  updated_at       timestamptz default now()
);

create table adoption_listing_images (
  id         uuid primary key default uuid_generate_v4(),
  listing_id uuid not null references adoption_listings(id) on delete cascade,
  url        text not null,
  position   int default 0,
  created_at timestamptz default now()
);

create table adoption_saves (
  listing_id uuid not null references adoption_listings(id) on delete cascade,
  user_id    uuid not null references profiles(id) on delete cascade,
  created_at timestamptz default now(),
  primary key (listing_id, user_id)
);

create table adoption_requests (
  id               uuid primary key default uuid_generate_v4(),
  listing_id       uuid not null references adoption_listings(id) on delete cascade,
  applicant_id     uuid not null references profiles(id) on delete cascade,
  status           adoption_request_status default 'pending',
  message          text,
  living_situation text,
  has_other_pets   boolean,
  experience       text,
  created_at       timestamptz default now(),
  updated_at       timestamptz default now(),
  unique (listing_id, applicant_id)
);

-- =============================================================
-- RESCUE
-- =============================================================

create table rescue_posts (
  id           uuid primary key default uuid_generate_v4(),
  poster_id    uuid not null references profiles(id) on delete cascade,
  title        text not null,
  description  text,
  animal_type  animal_type,
  urgency      rescue_urgency default 'needs_help',
  status       rescue_status default 'open',
  latitude     double precision,
  longitude    double precision,
  location     text,
  created_at   timestamptz default now(),
  updated_at   timestamptz default now()
);

create table rescue_post_images (
  id         uuid primary key default uuid_generate_v4(),
  post_id    uuid not null references rescue_posts(id) on delete cascade,
  url        text not null,
  position   int default 0,
  created_at timestamptz default now()
);

create table rescue_updates (
  id         uuid primary key default uuid_generate_v4(),
  post_id    uuid not null references rescue_posts(id) on delete cascade,
  author_id  uuid not null references profiles(id) on delete cascade,
  body       text not null,
  new_status rescue_status,
  created_at timestamptz default now()
);

create table rescue_volunteers (
  rescue_post_id uuid not null references rescue_posts(id) on delete cascade,
  user_id        uuid not null references profiles(id) on delete cascade,
  joined_at      timestamptz default now(),
  primary key (rescue_post_id, user_id)
);

-- =============================================================
-- MESSAGING
-- =============================================================

create table conversations (
  id           uuid primary key default uuid_generate_v4(),
  type         conversation_type default 'direct',
  name         text,  -- for group chats
  avatar_url   text,  -- for group chats
  created_by   uuid references profiles(id) on delete set null,
  created_at   timestamptz default now(),
  updated_at   timestamptz default now()
);

create table conversation_members (
  conversation_id uuid not null references conversations(id) on delete cascade,
  user_id         uuid not null references profiles(id) on delete cascade,
  joined_at       timestamptz default now(),
  last_read_at    timestamptz,
  is_admin        boolean default false,
  primary key (conversation_id, user_id)
);

create table messages (
  id              uuid primary key default uuid_generate_v4(),
  conversation_id uuid not null references conversations(id) on delete cascade,
  sender_id       uuid not null references profiles(id) on delete cascade,
  message_type    message_type default 'text',
  body            text,
  file_url        text,
  file_name       text,
  file_size       int,
  reply_to        uuid references messages(id) on delete set null,
  is_deleted      boolean default false,
  created_at      timestamptz default now(),
  updated_at      timestamptz default now()
);

-- =============================================================
-- NOTIFICATIONS
-- =============================================================

create table notifications (
  id          uuid primary key default uuid_generate_v4(),
  user_id     uuid not null references profiles(id) on delete cascade,
  actor_id    uuid references profiles(id) on delete set null,
  type        text not null, -- 'like','comment','follow','message','rescue_update','adoption_update'
  entity_type text,
  entity_id   uuid,
  body        text,
  is_read     boolean default false,
  created_at  timestamptz default now()
);

-- =============================================================
-- INDEXES
-- =============================================================

-- profiles
create index idx_profiles_username on profiles(username);

-- posts
create index idx_posts_user_id on posts(user_id);
create index idx_posts_created_at on posts(created_at desc);
create index idx_posts_animal_types on posts using gin(animal_types);
create index idx_posts_hashtags on posts using gin(hashtags);

-- post interactions
create index idx_post_likes_post_id on post_likes(post_id);
create index idx_post_comments_post_id on post_comments(post_id);

-- follows
create index idx_follows_follower on follows(follower_id);
create index idx_follows_following on follows(following_id);

-- marketplace
create index idx_listings_seller_id on marketplace_listings(seller_id);
create index idx_listings_category_id on marketplace_listings(category_id);
create index idx_listings_status on marketplace_listings(status);
create index idx_listings_animal_types on marketplace_listings using gin(animal_types);

-- adoption
create index idx_adoption_poster_id on adoption_listings(poster_id);
create index idx_adoption_status on adoption_listings(status);
create index idx_adoption_animal_type on adoption_listings(animal_type);

-- rescue
create index idx_rescue_poster_id on rescue_posts(poster_id);
create index idx_rescue_status on rescue_posts(status);
create index idx_rescue_urgency on rescue_posts(urgency);

-- messaging
create index idx_messages_conversation_id on messages(conversation_id);
create index idx_messages_sender_id on messages(sender_id);
create index idx_messages_created_at on messages(created_at desc);
create index idx_conv_members_user_id on conversation_members(user_id);

-- notifications
create index idx_notifications_user_id on notifications(user_id);
create index idx_notifications_unread on notifications(user_id, is_read) where is_read = false;

-- =============================================================
-- FUNCTIONS & TRIGGERS
-- =============================================================

-- Auto-create profile on user signup
create or replace function handle_new_user()
returns trigger language plpgsql security definer as $$
begin
  insert into public.profiles (id, username, display_name, avatar_url)
  values (
    new.id,
    coalesce(new.raw_user_meta_data->>'username', split_part(new.email, '@', 1)),
    coalesce(new.raw_user_meta_data->>'full_name', new.raw_user_meta_data->>'name'),
    new.raw_user_meta_data->>'avatar_url'
  );
  return new;
end;
$$;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure handle_new_user();

-- Update updated_at timestamp
create or replace function update_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create trigger trg_profiles_updated_at before update on profiles
  for each row execute procedure update_updated_at();

create trigger trg_posts_updated_at before update on posts
  for each row execute procedure update_updated_at();

create trigger trg_marketplace_updated_at before update on marketplace_listings
  for each row execute procedure update_updated_at();

create trigger trg_adoption_updated_at before update on adoption_listings
  for each row execute procedure update_updated_at();

create trigger trg_rescue_updated_at before update on rescue_posts
  for each row execute procedure update_updated_at();

create trigger trg_conversations_updated_at before update on conversations
  for each row execute procedure update_updated_at();

create trigger trg_messages_updated_at before update on messages
  for each row execute procedure update_updated_at();

-- Update conversation updated_at when a new message is sent
create or replace function update_conversation_on_message()
returns trigger language plpgsql as $$
begin
  update conversations set updated_at = now() where id = new.conversation_id;
  return new;
end;
$$;

create trigger trg_conversation_last_message
  after insert on messages
  for each row execute procedure update_conversation_on_message();

-- Helper: get or create direct conversation between two users
create or replace function get_or_create_direct_conversation(user_a uuid, user_b uuid)
returns uuid language plpgsql security definer as $$
declare
  conv_id uuid;
begin
  select c.id into conv_id
  from conversations c
  join conversation_members ma on ma.conversation_id = c.id and ma.user_id = user_a
  join conversation_members mb on mb.conversation_id = c.id and mb.user_id = user_b
  where c.type = 'direct'
  limit 1;

  if conv_id is null then
    insert into conversations (type, created_by) values ('direct', user_a)
    returning id into conv_id;
    insert into conversation_members (conversation_id, user_id) values (conv_id, user_a);
    insert into conversation_members (conversation_id, user_id) values (conv_id, user_b);
  end if;

  return conv_id;
end;
$$;

-- =============================================================
-- VIEWS
-- =============================================================

-- Post feed view with counts
create or replace view post_feed as
select
  p.*,
  pr.username,
  pr.display_name,
  pr.avatar_url as author_avatar_url,
  (select count(*) from post_likes pl where pl.post_id = p.id)::int as likes_count,
  (select count(*) from post_comments pc where pc.post_id = p.id)::int as comments_count,
  (select count(*) from post_saves ps where ps.post_id = p.id)::int as saves_count
from posts p
join profiles pr on pr.id = p.user_id
where p.is_archived = false
  and (p.expires_at is null or p.expires_at > now());

-- Unread message counts per conversation per user
create or replace view unread_message_counts as
select
  cm.user_id,
  cm.conversation_id,
  count(m.id)::int as unread_count
from conversation_members cm
join messages m on m.conversation_id = cm.conversation_id
where m.sender_id <> cm.user_id
  and m.is_deleted = false
  and (cm.last_read_at is null or m.created_at > cm.last_read_at)
group by cm.user_id, cm.conversation_id;

-- =============================================================
-- SEED DATA — listing categories
-- =============================================================

insert into listing_categories (name, slug, icon_name, sort_order) values
  ('Food & Treats',     'food-treats',    'restaurant',      1),
  ('Toys',              'toys',           'toys',            2),
  ('Grooming',          'grooming',       'content_cut',     3),
  ('Apparel',           'apparel',        'checkroom',       4),
  ('Health & Wellness', 'health',         'medical_services',5),
  ('Cages & Habitats',  'cages-habitats', 'home',            6),
  ('Accessories',       'accessories',    'category',        7),
  ('Bedding & Comfort', 'bedding',        'bed',             8),
  ('Training',          'training',       'school',          9),
  ('Other',             'other',          'more_horiz',     10);
