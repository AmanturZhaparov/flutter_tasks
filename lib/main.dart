import 'package:flutter/material.dart';
import 'package:flutter_tasks/tasks/colum_row.dart';
import 'package:flutter_tasks/tasks/layout_positioning.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LayoutPositioning(),
    );
  }
}
