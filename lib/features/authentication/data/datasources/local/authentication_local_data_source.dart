import 'package:shared_preferences/shared_preferences.dart';

const String CACHE_TOKEN = 'CACHE_TOKEN';

abstract class AuthenticationLocalDataSource {
  factory AuthenticationLocalDataSource(SharedPreferences sharedPreferences) =
      _AuthenticationLocalDataSource;

  Future<void> cacheToken(String token);

  String getToken();

  Future<void> deleteToken();
}

class _AuthenticationLocalDataSource implements AuthenticationLocalDataSource {
  final SharedPreferences sharedPreferences;

  _AuthenticationLocalDataSource(this.sharedPreferences);

  @override
  Future<void> cacheToken(String token) async {
    await sharedPreferences.setString(CACHE_TOKEN, token);
  }

  @override
  Future<void> deleteToken() async {
    await sharedPreferences.remove(CACHE_TOKEN);
  }

  @override
  String getToken() {
    return sharedPreferences.getString(CACHE_TOKEN) ?? '';
  }
}
