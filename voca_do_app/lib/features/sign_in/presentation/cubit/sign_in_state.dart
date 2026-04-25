import 'package:equatable/equatable.dart';
import 'package:voca_do_app/core/common/enities/active_user_entity.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object?> get props => [];
}

class SignInInitialState extends SignInState {}

class SignInLoadingState extends SignInState {}

class SignInSuccessState extends SignInState {
  final ActiveUserEntity user;

  const SignInSuccessState({required this.user});
  @override
  List<Object?> get props => [user];
}

class SignInErrorState extends SignInState {
  final String message;
  const SignInErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
