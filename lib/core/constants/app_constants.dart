class AppConstants {
  AppConstants._();

  static const String appName = 'PetsConnect';

  // NestJS API base URL
  // For Android physical device: use your machine's LAN IP (e.g. http://192.168.1.x:3000/api)
  // For Android emulator: use http://10.0.2.2:3000/api
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://2001:fd8:bf02:5a00:cbc4:53f6:acdf:1704/api',
  );

  // Upload folders (used as S3 prefix)
  static const String folderAvatars = 'avatars';
  static const String folderPostMedia = 'post-media';
  static const String folderListingImages = 'listing-images';
  static const String folderAdoptionImages = 'adoption-images';
  static const String folderRescueImages = 'rescue-images';
  static const String folderMessageAttachments = 'message-attachments';

  // Pagination
  static const int feedPageSize = 20;
  static const int listingsPageSize = 20;
  static const int messagesPageSize = 30;

  // Media limits
  static const int maxPostImages = 10;
  static const int maxListingImages = 8;
}
