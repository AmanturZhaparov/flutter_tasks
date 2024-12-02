import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  final String taskId;
  static const String route = "/task";

  const TaskScreen({super.key, required this.taskId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task $taskId'),
      ),
      body: Center(
        child: Text(
          'Details for Task $taskId',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
