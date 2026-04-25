import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/home/presentation/pages/home_feature_screen.dart';
import 'package:voca_do_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:voca_do_app/features/tasks/presentation/pages/tasks_feature_screen.dart';
import 'package:voca_do_app/features/tasks/presentation/cubit/tasks_cubit.dart';
import 'package:voca_do_app/features/tasks/domain/entities/tasks_entity.dart';
import 'package:voca_do_app/features/tasks/presentation/pages/task_details_feature_screen.dart';
import 'package:voca_do_app/features/home/presentation/pages/user_dashboard_feature_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.tasks,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("splash screen")));
        }, // SplashScreen
      ),

      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          // TODO: Replace static role with dynamic role from Supabase (user_role table) after login
          const role = "user";

          if (role == "admin") {
            return BlocProvider(
              create: (context) => HomeCubit(GetIt.I.get()),
              child: const HomeFeatureScreen(),
            );
          }

          return BlocProvider(
            create: (context) => HomeCubit(GetIt.I.get()),
            child: const UserDashboardFeatureScreen(),
          );
        },
      ),

      GoRoute(
        path: Routes.tasks,
        builder: (context, state) => BlocProvider(
          create: (context) => TasksCubit(GetIt.I.get()),
          child: const TasksFeatureScreen(),
        ),
      ),
      GoRoute(
        path: Routes.taskDetails,
        builder: (context, state) {
          final task = state.extra as TasksEntity;

          return TaskDetailsFeatureScreen(task: task);
        },
      ),
      GoRoute(
        path: Routes.userDashboard,
        builder: (context, state) => BlocProvider(
          create: (context) => HomeCubit(GetIt.I.get()),
          child: const UserDashboardFeatureScreen(),
        ),
      ),
    ],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
