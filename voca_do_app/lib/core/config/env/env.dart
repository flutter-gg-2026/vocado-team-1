import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {

  @EnviedField(varName: 'url_supabase')
  static const String supabaseUrl = _Env.supabaseUrl;

  @EnviedField(varName: 'key_supabase')
  static const String supabaseAnonKey = _Env.supabaseAnonKey;

}