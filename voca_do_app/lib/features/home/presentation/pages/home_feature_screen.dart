import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:voca_do_app/features/home/presentation/cubit/home_state.dart';
import 'package:go_router/go_router.dart';
import 'package:voca_do_app/core/navigation/routers.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() => context.read<HomeCubit>().getHomeMethod());

    return Scaffold(
      appBar: AppBar(title: const Text('Task Dashboard')),

      /// Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is HomeErrorState) {
              return Center(child: Text(state.message));
            }

            if (state is HomeSuccessState) {
              return Column(
                children: [
                  _StatusCard(title: 'New Tasks', count: state.newTasks),
                  const SizedBox(height: 12),
                  _StatusCard(
                    title: 'In Progress',
                    count: state.inProgressTasks,
                  ),
                  const SizedBox(height: 12),
                  _StatusCard(title: 'Late Tasks', count: state.lateTasks),
                ],
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}

class _StatusCard extends StatelessWidget {
  final String title;
  final int count;

  const _StatusCard({required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Text(
          count.toString(),
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
