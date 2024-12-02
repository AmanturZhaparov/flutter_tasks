import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  const CustomCard({super.key, required this.imageUrl, required this.title, required this.description});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool _isDescriptionVisible = false;

  void _toggleDescriptionVisibility() {
    setState(() {
      _isDescriptionVisible = !_isDescriptionVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Card(
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
                    widget.imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                if (_isDescriptionVisible)
                  Text(
                    widget.description,
                    style: const TextStyle(fontSize: 16.0, color: Colors.black87),
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
        );
  }
}