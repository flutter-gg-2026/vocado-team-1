import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voca_do_app/core/navigation/routers.dart';
import 'package:voca_do_app/features/tasks/presentation/cubit/tasks_cubit.dart';
import 'package:voca_do_app/features/tasks/presentation/widgets/tasks_list_by_status_widget.dart';

class TasksFeatureScreen extends StatelessWidget {
  const TasksFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() => context.read<TasksCubit>().getTasksMethod());

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tasks Feature Screen'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'New'),
              Tab(text: 'In Progress'),
              Tab(text: 'Late'),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            if (index == 0) {
              context.go(Routes.tasks);
            }

            if (index == 1) {
              context.go(Routes.home);
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),

        /// Tabs content
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TasksListByStatusWidget(status: 'New'),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: TasksListByStatusWidget(status: 'In Progress'),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: TasksListByStatusWidget(status: 'Late'),
            ),
          ],
        ),
      ),
    );
  }
}
