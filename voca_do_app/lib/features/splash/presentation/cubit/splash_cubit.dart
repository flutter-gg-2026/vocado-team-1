import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/splash/domain/use_cases/splash_use_case.dart';
import 'package:voca_do_app/features/splash/presentation/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final SplashUseCase _splashUseCase;

  SplashCubit(this._splashUseCase) : super(SplashInitialState());

  Future<void> getSplashMethod() async {
    final result = await _splashUseCase.getSplash();
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
