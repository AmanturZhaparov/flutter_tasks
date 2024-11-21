import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Column and Row"),),
      body: Column(
        children: [Container(height: 200, color: Colors.red,)],
      ),
    );
  }
}