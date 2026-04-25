import 'package:flutter/material.dart';
import 'package:voca_do_app/features/tasks/domain/entities/tasks_entity.dart';
import 'package:go_router/go_router.dart';
import 'package:voca_do_app/core/navigation/routers.dart';

class TaskDetailsFeatureScreen extends StatelessWidget {
  final TasksEntity task;

  const TaskDetailsFeatureScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(task.title)),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.description),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      task.description,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.flag),
                  const SizedBox(width: 10),
                  Text(
                    "Status: ${task.status}",
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Approve Task"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
