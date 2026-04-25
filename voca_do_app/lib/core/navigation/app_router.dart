import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/task_creator/presentation/pages/task_creator_feature_screen.dart';
import 'package:voca_do_app/features/task_creator/presentation/cubit/task_creator_cubit.dart';



class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.taskCreator,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("splash screen")));
        }, // SplashScreen
      ),
    


  GoRoute(
    path: Routes.taskCreator,
    builder: (context, state) => BlocProvider(
          create: (context) => TaskCreatorCubit(GetIt.I.get()),
          child: const TaskCreatorFeatureScreen(),
        ),
  ),
],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
