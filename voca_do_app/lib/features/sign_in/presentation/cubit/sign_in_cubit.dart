import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/sign_in/domain/use_cases/sign_in_use_case.dart';
import 'package:voca_do_app/features/sign_in/presentation/cubit/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final SignInUseCase _signInUseCase;

  SignInCubit(this._signInUseCase) : super(SignInInitialState());

  Future<void> getSignInMethod() async {
    final result = await _signInUseCase.getSignIn();
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
