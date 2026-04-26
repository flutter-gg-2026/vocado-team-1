// api_endpoints.dart
class ApiEndpoints {
  ApiEndpoints._();

  static const String baseUrl = 'https://api.example.com';

  // Gladia AI endpoint
  static const String baseUrlGladia = 'https://api.gladia.io/v2';
  static const String uploadAudio = '/upload';
  static const String transcriptionAudio = '/pre-recorded';
  

  // Auth
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh';

  // User
  static const String profile = '/user/profile';

  // Common
  static String userById(String id) => '/users/$id';
}
