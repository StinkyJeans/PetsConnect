-- =============================================================
-- PetsConnect - Row Level Security Policies
-- =============================================================

-- Enable RLS on all tables
alter table profiles enable row level security;
alter table pet_profiles enable row level security;
alter table follows enable row level security;
alter table posts enable row level security;
alter table post_media enable row level security;
alter table post_likes enable row level security;
alter table post_comments enable row level security;
alter table post_saves enable row level security;
alter table listing_categories enable row level security;
alter table marketplace_listings enable row level security;
alter table listing_images enable row level security;
alter table listing_reviews enable row level security;
alter table orders enable row level security;
alter table adoption_listings enable row level security;
alter table adoption_listing_images enable row level security;
alter table adoption_saves enable row level security;
alter table adoption_requests enable row level security;
alter table rescue_posts enable row level security;
alter table rescue_post_images enable row level security;
alter table rescue_updates enable row level security;
alter table rescue_volunteers enable row level security;
alter table conversations enable row level security;
alter table conversation_members enable row level security;
alter table messages enable row level security;
alter table notifications enable row level security;

-- =============================================================
-- PROFILES
-- =============================================================

create policy "Profiles are viewable by everyone"
  on profiles for select using (true);

create policy "Users can insert their own profile"
  on profiles for insert with check (auth.uid() = id);

create policy "Users can update their own profile"
  on profiles for update using (auth.uid() = id);

-- =============================================================
-- PET PROFILES
-- =============================================================

create policy "Public pet profiles are viewable by everyone"
  on pet_profiles for select using (is_public = true or auth.uid() = owner_id);

create policy "Users can insert their own pet profiles"
  on pet_profiles for insert with check (auth.uid() = owner_id);

create policy "Users can update their own pet profiles"
  on pet_profiles for update using (auth.uid() = owner_id);

create policy "Users can delete their own pet profiles"
  on pet_profiles for delete using (auth.uid() = owner_id);

-- =============================================================
-- FOLLOWS
-- =============================================================

create policy "Follows are viewable by everyone"
  on follows for select using (true);

create policy "Users can follow others"
  on follows for insert with check (auth.uid() = follower_id);

create policy "Users can unfollow"
  on follows for delete using (auth.uid() = follower_id);

-- =============================================================
-- POSTS
-- =============================================================

create policy "Posts are viewable by everyone"
  on posts for select using (is_archived = false);

create policy "Authenticated users can create posts"
  on posts for insert with check (auth.uid() = user_id);

create policy "Users can update their own posts"
  on posts for update using (auth.uid() = user_id);

create policy "Users can delete their own posts"
  on posts for delete using (auth.uid() = user_id);

-- POST MEDIA
create policy "Post media is viewable by everyone"
  on post_media for select using (true);

create policy "Users can insert media for their own posts"
  on post_media for insert with check (
    auth.uid() = (select user_id from posts where id = post_id)
  );

create policy "Users can delete media from their own posts"
  on post_media for delete using (
    auth.uid() = (select user_id from posts where id = post_id)
  );

-- POST LIKES
create policy "Likes are viewable by everyone"
  on post_likes for select using (true);

create policy "Authenticated users can like posts"
  on post_likes for insert with check (auth.uid() = user_id);

create policy "Users can unlike posts"
  on post_likes for delete using (auth.uid() = user_id);

-- POST COMMENTS
create policy "Comments are viewable by everyone"
  on post_comments for select using (true);

create policy "Authenticated users can comment"
  on post_comments for insert with check (auth.uid() = user_id);

create policy "Users can update their own comments"
  on post_comments for update using (auth.uid() = user_id);

create policy "Users can delete their own comments"
  on post_comments for delete using (auth.uid() = user_id);

-- POST SAVES
create policy "Users can view their own saves"
  on post_saves for select using (auth.uid() = user_id);

create policy "Authenticated users can save posts"
  on post_saves for insert with check (auth.uid() = user_id);

create policy "Users can unsave posts"
  on post_saves for delete using (auth.uid() = user_id);

-- =============================================================
-- MARKETPLACE
-- =============================================================

create policy "Categories are viewable by everyone"
  on listing_categories for select using (true);

create policy "Active listings are viewable by everyone"
  on marketplace_listings for select using (status = 'active' or auth.uid() = seller_id);

create policy "Authenticated users can create listings"
  on marketplace_listings for insert with check (auth.uid() = seller_id);

create policy "Sellers can update their own listings"
  on marketplace_listings for update using (auth.uid() = seller_id);

create policy "Sellers can delete their own listings"
  on marketplace_listings for delete using (auth.uid() = seller_id);

-- LISTING IMAGES
create policy "Listing images are viewable by everyone"
  on listing_images for select using (true);

create policy "Sellers can insert images for their listings"
  on listing_images for insert with check (
    auth.uid() = (select seller_id from marketplace_listings where id = listing_id)
  );

create policy "Sellers can delete images from their listings"
  on listing_images for delete using (
    auth.uid() = (select seller_id from marketplace_listings where id = listing_id)
  );

-- REVIEWS
create policy "Reviews are viewable by everyone"
  on listing_reviews for select using (true);

create policy "Buyers can leave reviews"
  on listing_reviews for insert with check (auth.uid() = reviewer_id);

-- ORDERS
create policy "Users can view their own orders"
  on orders for select using (auth.uid() = buyer_id or auth.uid() = seller_id);

create policy "Buyers can create orders"
  on orders for insert with check (auth.uid() = buyer_id);

create policy "Parties can update their orders"
  on orders for update using (auth.uid() = buyer_id or auth.uid() = seller_id);

-- =============================================================
-- ADOPTION
-- =============================================================

create policy "Adoption listings are viewable by everyone"
  on adoption_listings for select using (true);

create policy "Authenticated users can post adoption listings"
  on adoption_listings for insert with check (auth.uid() = poster_id);

create policy "Posters can update their adoption listings"
  on adoption_listings for update using (auth.uid() = poster_id);

create policy "Posters can delete their adoption listings"
  on adoption_listings for delete using (auth.uid() = poster_id);

-- ADOPTION IMAGES
create policy "Adoption images are viewable by everyone"
  on adoption_listing_images for select using (true);

create policy "Posters can insert adoption images"
  on adoption_listing_images for insert with check (
    auth.uid() = (select poster_id from adoption_listings where id = listing_id)
  );

-- ADOPTION SAVES
create policy "Users can view their own adoption saves"
  on adoption_saves for select using (auth.uid() = user_id);

create policy "Users can save adoption listings"
  on adoption_saves for insert with check (auth.uid() = user_id);

create policy "Users can unsave adoption listings"
  on adoption_saves for delete using (auth.uid() = user_id);

-- ADOPTION REQUESTS
create policy "Applicants and posters can view adoption requests"
  on adoption_requests for select using (
    auth.uid() = applicant_id
    or auth.uid() = (select poster_id from adoption_listings where id = listing_id)
  );

create policy "Authenticated users can submit adoption requests"
  on adoption_requests for insert with check (auth.uid() = applicant_id);

create policy "Applicants can update their own requests"
  on adoption_requests for update using (auth.uid() = applicant_id);

-- Allow poster to update status (approve/reject)
create policy "Posters can update adoption request status"
  on adoption_requests for update using (
    auth.uid() = (select poster_id from adoption_listings where id = listing_id)
  );

-- =============================================================
-- RESCUE
-- =============================================================

create policy "Rescue posts are viewable by everyone"
  on rescue_posts for select using (true);

create policy "Authenticated users can post rescues"
  on rescue_posts for insert with check (auth.uid() = poster_id);

create policy "Posters can update their rescue posts"
  on rescue_posts for update using (auth.uid() = poster_id);

create policy "Posters can delete their rescue posts"
  on rescue_posts for delete using (auth.uid() = poster_id);

-- RESCUE IMAGES
create policy "Rescue images are viewable by everyone"
  on rescue_post_images for select using (true);

create policy "Posters can insert rescue images"
  on rescue_post_images for insert with check (
    auth.uid() = (select poster_id from rescue_posts where id = post_id)
  );

-- RESCUE UPDATES
create policy "Rescue updates are viewable by everyone"
  on rescue_updates for select using (true);

create policy "Authenticated users can post rescue updates"
  on rescue_updates for insert with check (auth.uid() = author_id);

-- RESCUE VOLUNTEERS
create policy "Rescue volunteers are viewable by everyone"
  on rescue_volunteers for select using (true);

create policy "Users can volunteer for rescues"
  on rescue_volunteers for insert with check (auth.uid() = user_id);

create policy "Users can leave rescue volunteer list"
  on rescue_volunteers for delete using (auth.uid() = user_id);

-- =============================================================
-- MESSAGING
-- =============================================================

create policy "Users can view conversations they are members of"
  on conversations for select using (
    exists (
      select 1 from conversation_members
      where conversation_id = id and user_id = auth.uid()
    )
  );

create policy "Authenticated users can create conversations"
  on conversations for insert with check (auth.uid() = created_by);

create policy "Members can update group conversation details"
  on conversations for update using (
    exists (
      select 1 from conversation_members
      where conversation_id = id and user_id = auth.uid() and is_admin = true
    )
  );

-- CONVERSATION MEMBERS
create policy "Members can view conversation membership"
  on conversation_members for select using (
    exists (
      select 1 from conversation_members cm
      where cm.conversation_id = conversation_id and cm.user_id = auth.uid()
    )
  );

create policy "Conversation creator can add members"
  on conversation_members for insert with check (
    auth.uid() = user_id
    or auth.uid() = (select created_by from conversations where id = conversation_id)
  );

create policy "Members can update their own read status"
  on conversation_members for update using (auth.uid() = user_id);

-- MESSAGES
create policy "Members can view messages in their conversations"
  on messages for select using (
    exists (
      select 1 from conversation_members
      where conversation_id = messages.conversation_id and user_id = auth.uid()
    )
  );

create policy "Members can send messages"
  on messages for insert with check (
    auth.uid() = sender_id
    and exists (
      select 1 from conversation_members
      where conversation_id = messages.conversation_id and user_id = auth.uid()
    )
  );

create policy "Senders can update their own messages"
  on messages for update using (auth.uid() = sender_id);

-- =============================================================
-- NOTIFICATIONS
-- =============================================================

create policy "Users can view their own notifications"
  on notifications for select using (auth.uid() = user_id);

create policy "System can insert notifications"
  on notifications for insert with check (true);

create policy "Users can mark their notifications as read"
  on notifications for update using (auth.uid() = user_id);
