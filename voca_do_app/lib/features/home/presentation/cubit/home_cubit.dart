import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/home/domain/use_cases/home_use_case.dart';
import 'package:voca_do_app/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;

  HomeCubit(this._homeUseCase) : super(HomeInitialState());

  Future<void> getHomeMethod() async {
    emit(HomeLoadingState());
    final result = await _homeUseCase.getHome();
    result.when(
      (success) {
        emit(
          HomeSuccessState(
            newTasks: success.newTasks,
            inProgressTasks: success.inProgressTasks,
            lateTasks: success.lateTasks,
          ),
        );
      },
      (whenError) {
        emit(HomeErrorState(message: whenError.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
