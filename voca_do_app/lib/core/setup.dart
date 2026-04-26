import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/config/env.dart';

Future<void> setup() async {
  //----------------------------------------------------------------------------
  await dotenv.load(fileName: ".env");
  //----------------------------------------------------------------------------
  await Supabase.initialize(
    url: Env.supabaseUrl,
    anonKey: Env.supabaseKey,
  );
  //----------------------------------------------------------------------------
  await GetStorage.init();
  //----------------------------------------------------------------------------
}
