// ignore_for_file: constant_identifier_names

/// Application routes
abstract final class AppRoutes {
  static const String splash = '/';
  static const String onboard = '/onboard';
  static const String language = '/language';
  static const String auth = '/auth';
  static const String login = '/login';
  static const String signUp = '/sign_up';
  static const String forgotPassword = '/forgot_password';
  static const String verifyOtp = '/verify_otp';
  static const String resetPassword = '/reset_password';

  // Home routes (bottom nav)
  static const String home = '/home';
  static const String discover = '/discover';
  static const String favorite = '/favorite';
  static const String chat = '/chat';
  static const String profile = '/profile';

  // Search routes
  static const String search = '/search';
  static const String searchResults = '/search_results';

  // Listing routes
  static const String listingDetail = '/listing_detail';
  static const String listingDetailWeb = '/listing_detail_web';
  static const String listingPhotos = '/listing_photos';
  static const String listingMap = '/listing_map';
  static const String compareListings = '/compare_listings';
  static const String compareMap = '/compare_map';
  static const String similarListings = '/similar_listings';

  // Profile routes
  static const String profileSettings = '/profile_settings';
  static const String notifications = '/notifications';
  static const String helpCenter = '/help_center';
  static const String terms = '/terms';
  static const String privacy = '/privacy';
  static const String userAgreement = '/user_agreement';
  static const String legal = '/legal';
  static const String aboutUs = '/about_us';
  static const String logout = '/logout';

  // Form routes
  static const String createListing = '/create_listing';
  static const String editListing = '/edit_listing';
  static const String inquiryForm = '/inquiry_form';
  static const String priceQuoteForm = '/price_quote_form';
  static const String showByAppointmentForm = '/show_by_appointment_form';

  // Community routes
  static const String community = '/community';
  static const String communityDetail = '/community_detail';
  static const String createPost = '/create_post';
  static const String postDetail = '/post_detail';

  // Media upload routes
  static const String mediaUpload = '/media_upload';
  static const String imagePreview = '/image_preview';

  // Other routes
  static const String contact = '/contact';
  static const String maintenance = '/maintenance';
  static const StringmaintenanceModal = '/maintenance_modal';
}
