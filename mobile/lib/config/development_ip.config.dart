import 'package:injectable/injectable.dart';
import 'config.definition.dart';

@LazySingleton(as: ConfigDefinition, env: ['development_ip'])
class DevelopmentConfigDefinition implements ConfigDefinition {
  @override
  String get apiUrl => 'http://192.168.137.115:3000/api';
}
