import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool _isDescriptionVisible = false;

  void _toggleDescriptionVisibility() {
    setState(() {
      _isDescriptionVisible = !_isDescriptionVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Card Widget'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    'data:image/webp;base64,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',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Тема',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                if (_isDescriptionVisible)
                  const Text(
                    'Какая то подтема',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: _toggleDescriptionVisibility,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    _isDescriptionVisible ? "Hide Details" : "Show Details",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
