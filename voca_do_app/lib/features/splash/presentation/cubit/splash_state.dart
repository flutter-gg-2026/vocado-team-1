import 'package:equatable/equatable.dart';
import 'package:voca_do_app/features/splash/domain/entities/splash_entity.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object?> get props => [];
}

class SplashInitialState extends SplashState {}
class SplashLoadingState extends SplashState {}

class SplashAuthenticatedState extends SplashState {
  final SplashEntity user;

  const SplashAuthenticatedState({required this.user});
  @override
  List<Object?> get props => [user];
}

class SplashUnauthenticatedState extends SplashState {}

class SplashErrorState extends SplashState {
  final String message;
  const SplashErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
