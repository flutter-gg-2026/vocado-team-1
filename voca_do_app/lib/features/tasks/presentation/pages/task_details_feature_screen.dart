import 'package:flutter/material.dart';
import 'package:voca_do_app/features/tasks/domain/entities/tasks_entity.dart';

class TaskDetailsFeatureScreen extends StatelessWidget {
  final TasksEntity task;

  const TaskDetailsFeatureScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(task.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title: ${task.title}"),
            const SizedBox(height: 10),
            Text("Description: ${task.description}"),
            const SizedBox(height: 10),
            Text("Status: ${task.status}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Approve Task"),
            ),
          ],
        ),
      ),
    );
  }
}
