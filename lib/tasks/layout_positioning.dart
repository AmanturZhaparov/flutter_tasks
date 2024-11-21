import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp ());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LayoutPositioning(),
    );
  }
}

class LayoutPositioning extends StatelessWidget {
  const LayoutPositioning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aman'),
        actions: [
          Switch(
            value: false,
            
            onChanged: (value) {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  buildMenuItem(Icons.phone_iphone, "Default Theme", Colors.teal),
                  buildMenuItem(Icons.apps, "Full Apps", Colors.purple),
                  buildMenuItem(Icons.language, "Integration", Colors.green),
                  buildMenuItem(Icons.dashboard, "Dashboard", Colors.orange),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                "Themes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            buildThemeItem(Icons.folder, "File Manager", "Theme 1 Screens", Colors.orange),
            buildThemeItem(Icons.fitness_center, "Exercise Tips", "Theme 2 Screens", Colors.green),
            buildThemeItem(Icons.fastfood, "Food Recipe", "Theme 3 Screens", Colors.blue),
            buildThemeItem(Icons.sports_gymnastics, "Gym", "Theme 4 Screens", Colors.green),
            buildThemeItem(Icons.account_balance_wallet, "e-wallet", "Theme 5 Screens", Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 40),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(color: color, fontSize: 16.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildThemeItem(IconData icon, String title, String subtitle, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(icon, color: color, size: 30),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
