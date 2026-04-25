import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/sign_up/presentation/pages/sign_up_feature_screen.dart';
import 'package:voca_do_app/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:voca_do_app/features/sign_in/presentation/pages/sign_in_feature_screen.dart';
import 'package:voca_do_app/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:voca_do_app/features/splash/presentation/pages/splash_feature_screen.dart';
import 'package:voca_do_app/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:voca_do_app/features/test_admin_home/presentation/pages/test_admin_home_feature_screen.dart';
import 'package:voca_do_app/features/test_admin_home/presentation/cubit/test_admin_home_cubit.dart';
import 'package:voca_do_app/features/test_user_home/presentation/pages/test_user_home_feature_screen.dart';
import 'package:voca_do_app/features/test_user_home/presentation/cubit/test_user_home_cubit.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => BlocProvider(
          create: (context) => SplashCubit(GetIt.I.get()),
          child: const SplashFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.signUp,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(GetIt.I.get()),
          child: const SignUpFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.signIn,
        builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(GetIt.I.get()),
          child: const SignInFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.splash,
        builder: (context, state) => BlocProvider(
          create: (context) => SplashCubit(GetIt.I.get()),
          child: const SplashFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.testAdminHome,
        builder: (context, state) => BlocProvider(
          create: (context) => TestAdminHomeCubit(GetIt.I.get()),
          child: const TestAdminHomeFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.testUserHome,
        builder: (context, state) => BlocProvider(
          create: (context) => TestUserHomeCubit(GetIt.I.get()),
          child: const TestUserHomeFeatureScreen(),
        ),
      ),
    ],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
