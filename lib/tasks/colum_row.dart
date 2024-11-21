import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column and Row Practice',
      home: ColumnRow(),
    );
  }
}

class ColumnRow extends StatelessWidget {
  const ColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column and Row Practice'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Fixed Red Container',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('1. Vertical Alignment with Column'),
            ),
            Container(
              color: Colors.grey[200],
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text("Первый"),
                  Text("Второй"),
                  Text("Третий"),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('2. Horizontal Alignment with Row'),
            ),
            Container(
              color: Colors.grey[200],
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.circle, size: 50, color: Colors.red),
                  Icon(Icons.circle, size: 50, color: Colors.green),
                  Icon(Icons.circle, size: 50, color: Colors.blue),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('3. mainAxisSize with Column'),
            ),
            Container(
              color: Colors.grey[200],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(height: 50, color: Colors.red),
                  Container(height: 50, color: Colors.blue),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('4. Mixed Alignment with Row and Column'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Текст 1"),
                    Icon(Icons.circle, size: 30),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Текст 2"),
                    Icon(Icons.circle, size: 30),
                  ],
                ),
              ],
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('5. Spacer and Expanded in Row'),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(height: 50, color: Colors.red),
                ),
                const Spacer(),
                Expanded(
                  flex: 1,
                  child: Container(height: 50, color: Colors.green),
                ),
                const Spacer(),
                Expanded(
                  flex: 3,
                  child: Container(height: 50, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
