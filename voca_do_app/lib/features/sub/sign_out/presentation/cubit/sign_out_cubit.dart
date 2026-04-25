import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/sub/sign_out/domain/use_cases/sign_out_use_case.dart';
import 'package:voca_do_app/features/sub/sign_out/presentation/cubit/sign_out_state.dart';

class SignOutCubit extends Cubit<SignOutState> {
  final SignOutUseCase _signOutUseCase;

  SignOutCubit(this._signOutUseCase) : super(SignOutInitialState());

  Future<void> signOutMethod() async {
    final result = await _signOutUseCase.signOut();
    result.when(
      (success) {
        //here is when success result
        emit(SignOutSuccessState());
      },
      (whenError) {
        //here is when error result
        emit(SignOutErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
