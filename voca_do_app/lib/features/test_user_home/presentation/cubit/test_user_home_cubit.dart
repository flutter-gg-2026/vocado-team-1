import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/test_user_home/domain/use_cases/test_user_home_use_case.dart';
import 'package:voca_do_app/features/test_user_home/presentation/cubit/test_user_home_state.dart';

class TestUserHomeCubit extends Cubit<TestUserHomeState> {
  final TestUserHomeUseCase _testUserHomeUseCase;

  TestUserHomeCubit(this._testUserHomeUseCase) : super(TestUserHomeInitialState());

  Future<void> getTestUserHomeMethod() async {
    final result = await _testUserHomeUseCase.getTestUserHome();
    result.when(
      (success) {
        //here is when success result
      },
      (whenError) {
       //here is when error result
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
