import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'key_supabase', obfuscate: true)
  static final String supabaseKey = _Env.supabaseKey;

  @EnviedField(varName: 'url_supabase',obfuscate: true)
  static final String supabaseUrl = _Env.supabaseUrl;
}
