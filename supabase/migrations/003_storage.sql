-- =============================================================
-- PetsConnect - Storage Buckets
-- =============================================================

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types) values
  ('avatars',             'avatars',             true,  5242880,   array['image/jpeg','image/png','image/webp']),
  ('pet-photos',          'pet-photos',          true,  5242880,   array['image/jpeg','image/png','image/webp']),
  ('post-media',          'post-media',          true,  52428800,  array['image/jpeg','image/png','image/webp','video/mp4','video/quicktime']),
  ('listing-images',      'listing-images',      true,  10485760,  array['image/jpeg','image/png','image/webp']),
  ('adoption-images',     'adoption-images',     true,  10485760,  array['image/jpeg','image/png','image/webp']),
  ('rescue-images',       'rescue-images',       true,  10485760,  array['image/jpeg','image/png','image/webp']),
  ('message-attachments', 'message-attachments', false, 26214400,  array['image/jpeg','image/png','image/webp','application/pdf','video/mp4']);

-- Storage policies
create policy "Avatar images are publicly accessible"
  on storage.objects for select using (bucket_id = 'avatars');

create policy "Users can upload their own avatar"
  on storage.objects for insert with check (
    bucket_id = 'avatars' and auth.uid()::text = (storage.foldername(name))[1]
  );

create policy "Users can update their own avatar"
  on storage.objects for update using (
    bucket_id = 'avatars' and auth.uid()::text = (storage.foldername(name))[1]
  );

create policy "Users can delete their own avatar"
  on storage.objects for delete using (
    bucket_id = 'avatars' and auth.uid()::text = (storage.foldername(name))[1]
  );

-- Pet photos
create policy "Pet photos are publicly accessible"
  on storage.objects for select using (bucket_id = 'pet-photos');

create policy "Users can upload pet photos"
  on storage.objects for insert with check (
    bucket_id = 'pet-photos' and auth.uid()::text = (storage.foldername(name))[1]
  );

create policy "Users can delete their pet photos"
  on storage.objects for delete using (
    bucket_id = 'pet-photos' and auth.uid()::text = (storage.foldername(name))[1]
  );

-- Post media
create policy "Post media is publicly accessible"
  on storage.objects for select using (bucket_id = 'post-media');

create policy "Authenticated users can upload post media"
  on storage.objects for insert with check (
    bucket_id = 'post-media' and auth.role() = 'authenticated'
    and auth.uid()::text = (storage.foldername(name))[1]
  );

create policy "Users can delete their own post media"
  on storage.objects for delete using (
    bucket_id = 'post-media' and auth.uid()::text = (storage.foldername(name))[1]
  );

-- Listing images
create policy "Listing images are publicly accessible"
  on storage.objects for select using (bucket_id = 'listing-images');

create policy "Authenticated users can upload listing images"
  on storage.objects for insert with check (
    bucket_id = 'listing-images' and auth.role() = 'authenticated'
    and auth.uid()::text = (storage.foldername(name))[1]
  );

create policy "Users can delete their listing images"
  on storage.objects for delete using (
    bucket_id = 'listing-images' and auth.uid()::text = (storage.foldername(name))[1]
  );

-- Adoption images
create policy "Adoption images are publicly accessible"
  on storage.objects for select using (bucket_id = 'adoption-images');

create policy "Authenticated users can upload adoption images"
  on storage.objects for insert with check (
    bucket_id = 'adoption-images' and auth.role() = 'authenticated'
    and auth.uid()::text = (storage.foldername(name))[1]
  );

-- Rescue images
create policy "Rescue images are publicly accessible"
  on storage.objects for select using (bucket_id = 'rescue-images');

create policy "Authenticated users can upload rescue images"
  on storage.objects for insert with check (
    bucket_id = 'rescue-images' and auth.role() = 'authenticated'
    and auth.uid()::text = (storage.foldername(name))[1]
  );

-- Message attachments (private — only members can access)
create policy "Conversation members can access message attachments"
  on storage.objects for select using (
    bucket_id = 'message-attachments'
    and auth.uid()::text = (storage.foldername(name))[1]
  );

create policy "Authenticated users can upload message attachments"
  on storage.objects for insert with check (
    bucket_id = 'message-attachments' and auth.role() = 'authenticated'
    and auth.uid()::text = (storage.foldername(name))[1]
  );
