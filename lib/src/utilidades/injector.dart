import 'package:http/http.dart';

enum Env { TEST, PROD }

class Injector {
  Injector._internal();
  factory Injector() => _singleton;

  static final Injector _singleton = Injector._internal();
  static Client _httpClient;

  static void configure({Client client}) {
    _httpClient = client ?? Client();
  }

  Client get client => _httpClient;
}
