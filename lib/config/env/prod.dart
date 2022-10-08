import 'base.dart';

class ProductionConfig extends Config {
  @override
  String get baseUrl => const String.fromEnvironment('BACKEND', defaultValue: 'http://localhost:3000');

  @override
  String get browserUrl => const String.fromEnvironment('WEB_URL', defaultValue: 'http://localhost');
}
