import 'package:flutter/material.dart';
import 'car.dart';
import 'CarDetailPage.dart';

class CarsCatalogPage extends StatelessWidget {
  final List<Car> cars = [
    Car(name: "Tesla Model S", maxSpeedKm: 250, mileageKm: 50000),
    Car(name: "BMW M3", maxSpeedKm: 280, mileageKm: 75000),
    Car(name: "Audi R8", maxSpeedKm: 320, mileageKm: 30000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars Catalog'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return ListTile(
            title: Text(car.name),
            subtitle: Text("Max Speed: ${car.maxSpeedKm} km/h"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailPage(car: car),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
