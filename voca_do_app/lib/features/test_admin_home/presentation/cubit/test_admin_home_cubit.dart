import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/test_admin_home/domain/use_cases/test_admin_home_use_case.dart';
import 'package:voca_do_app/features/test_admin_home/presentation/cubit/test_admin_home_state.dart';

class TestAdminHomeCubit extends Cubit<TestAdminHomeState> {
  final TestAdminHomeUseCase _testAdminHomeUseCase;

  TestAdminHomeCubit(this._testAdminHomeUseCase) : super(TestAdminHomeInitialState());

  Future<void> getTestAdminHomeMethod() async {
    final result = await _testAdminHomeUseCase.getTestAdminHome();
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
