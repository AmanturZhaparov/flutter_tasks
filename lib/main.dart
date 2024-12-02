import 'package:flutter/material.dart';
import 'package:flutter_tasks/tasks/colum_row.dart';
import 'package:flutter_tasks/tasks/layout_positioning.dart';
import 'package:flutter_tasks/tasks/custom_card/custom_widget.dart';
import 'package:flutter_tasks/tasks/router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

