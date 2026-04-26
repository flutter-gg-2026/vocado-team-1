import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/splash/domain/use_cases/splash_use_case.dart';
import 'package:voca_do_app/features/splash/presentation/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final SplashUseCase _splashUseCase;

  SplashCubit(this._splashUseCase) : super(SplashInitialState()) {
    getSplashMethod();
  }

  Future<void> getSplashMethod() async {
    emit(SplashLoadingState());
    final result = await _splashUseCase.getSplash();
    result.when(
      (success) {
        //here is when success result
        if (success.isLoggedIn) {
          emit(SplashAuthenticatedState(user: success));
        } else {
          emit(SplashUnauthenticatedState());
        }
      },
      (whenError) {
        //here is when error result
        emit(SplashErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
