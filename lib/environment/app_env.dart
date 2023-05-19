import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv {
  factory AppEnv() {
    return _singleton;
  }

  AppEnv._internal();

  static final AppEnv _singleton = AppEnv._internal();

  static String currentFlavor = 'development';

  static Future<void> initial(String flavor) async {
    currentFlavor = flavor;
    print('.env.$flavor');
    await dotenv.load(fileName: '.env.development'); // .env.development
  }

  static String get username => dotenv.get('USERNAME', fallback: 'Undefined');
  static String get baseUrl => dotenv.get('BASE_URL', fallback: 'Undefined');
}
