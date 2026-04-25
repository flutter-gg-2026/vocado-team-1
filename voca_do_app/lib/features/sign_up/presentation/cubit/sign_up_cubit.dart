import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/sign_up/domain/use_cases/sign_up_use_case.dart';
import 'package:voca_do_app/features/sign_up/presentation/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpUseCase _signUpUseCase;

  SignUpCubit(this._signUpUseCase) : super(SignUpInitialState());

  Future<void> signUpMethod({
    required String fullName,
    required String email,
    required String password,
    required String role,
  }) async {
    emit(SignUpLoadingState());
    final result = await _signUpUseCase.signUp(
      fullName: fullName,
      email: email,
      password: password,
      role: role,
    );
    result.when(
      (success) {
        //here is when success result
        emit(SignUpSuccessState(user: success));
      },
      (whenError) {
        //here is when error result
        emit(SignUpErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
