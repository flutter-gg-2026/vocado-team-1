import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/config/env/env.dart';

Future<void> setup() async {
  //----------------------------------------------------------------------------
  await Supabase.initialize(url: Env.supabaseUrl, anonKey: Env.supabaseAnonKey);
  //----------------------------------------------------------------------------
  await GetStorage.init();
  //----------------------------------------------------------------------------
}
