import 'package:injectable/injectable.dart';
import 'config.definition.dart';

@LazySingleton(as: ConfigDefinition, env: ['development_ip'])
class DevelopmentConfigDefinition implements ConfigDefinition {
  @override
  String get apiUrl => 'http://192.168.137.1:3000/api';
}
