import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'key_supabase', obfuscate: true)
  static final String supabaseKey = _Env.supabaseKey;

  @EnviedField(varName: 'url_supabase',obfuscate: true)
  static final String supabaseUrl = _Env.supabaseUrl;

  @EnviedField(varName: 'key_gemini', obfuscate: true)
  static final String geminiKey = _Env.geminiKey;

@EnviedField(varName: 'galida_key', obfuscate: true)
  static final String gladiaKey = _Env.gladiaKey;

  
}
