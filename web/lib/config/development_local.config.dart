import 'package:injectable/injectable.dart';
import 'config.definition.dart';

@LazySingleton(as: ConfigDefinition, env: ['development_local'])
class DevelopmentConfigDefinition implements ConfigDefinition {
  @override
  String get apiUrl => 'http://localhost:3000/api';
}
