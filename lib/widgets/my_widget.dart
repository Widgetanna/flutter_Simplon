import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String image;

  const MyWidget(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 150,
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      description,
                    ),
                  ),
                  Text(
                    "Prix: ${price.toString()} €",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
