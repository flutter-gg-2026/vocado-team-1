import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
