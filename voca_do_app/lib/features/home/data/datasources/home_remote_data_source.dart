import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:voca_do_app/core/services/local_keys_service.dart';
import 'package:voca_do_app/features/home/data/models/home_model.dart';
import 'package:voca_do_app/core/errors/network_exceptions.dart';

abstract class BaseHomeRemoteDataSource {
  Future<HomeModel> getHome();
}

@LazySingleton(as: BaseHomeRemoteDataSource)
class HomeRemoteDataSource implements BaseHomeRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;

  HomeRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<HomeModel> getHome() async {
    try {
      final response = await _supabase
          .from('tasks')
          .select('status')
          // TODO: replace hardcoded user id with logged-in user id from LocalKeysService after Sign-in feature is completed
          // .eq('assigned_to', _localKeysService.userId)
          .eq('assigned_to', 'c42a8b7d-4ac3-49b7-bf6b-fdc9c8cffb38');
      final newTasks = response.where((task) => task['status'] == 'New').length;
      final inProgressTasks = response
          .where((task) => task['status'] == 'In Progress')
          .length;
      final lateTasks = response
          .where((task) => task['status'] == 'Late')
          .length;
      return HomeModel(
        newTasks: newTasks,
        inProgressTasks: inProgressTasks,
        lateTasks: lateTasks,
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
