import 'package:equatable/equatable.dart';
import 'package:voca_do_app/core/common/enities/active_user_entity.dart';

abstract class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object?> get props => [];
}

class SignUpInitialState extends SignUpState {}

class SignUpLoadingState extends SignUpState {}

class SignUpSuccessState extends SignUpState {
  final ActiveUserEntity user;

  const SignUpSuccessState({required this.user});
  @override
  List<Object?> get props => [user];
}

class SignUpErrorState extends SignUpState {
  final String message;
  const SignUpErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
