import 'package:flutter/material.dart';
import 'package:flutter_simplon/widgets/my_widget.dart';

class TestHomePage extends StatefulWidget {
  const TestHomePage({Key? key}) : super(key: key);

  @override
  State<TestHomePage> createState() => _TestHomePageState();
}

class _TestHomePageState extends State<TestHomePage> {
  final String title = "Test page";

  List<String> images = ["iphone.png", "pixel.png", "laptop.png", "tablet.png"];
  List<String> names = ['iPhone', 'pixel1', 'laptop', 'tablet'];
  List<String> descriptions = [
    "iPhone is the stylist phone ever",
    "Pixel is the most featureful phone ever",
    "Laptop is most productive development tool",
    "Tablet is the most useful device ever for meeting",
  ];
  List<int> prices = [1000, 800, 2000, 1500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(names.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyWidget(
                name: names[index],
                description: descriptions[index],
                price: prices[index],
                image: 'assets/img/${images[index]}',
              ),
            );
          }),
        ),
      ),
    );
  }
}
