import 'package:flutter/material.dart';
import 'package:flutter_simplon/models/my_widget_model.dart';
import 'package:flutter_simplon/widgets/rating_box.dart';

class MyWidget extends StatelessWidget {
   final MyWidgetModel myWidgetModel; 

  const MyWidget({
    Key? key,
    required this.myWidgetModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 150,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              myWidgetModel.image,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    myWidgetModel.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      myWidgetModel.description,
                    ),
                  ),
                  Text(
                    "Prix: ${myWidgetModel.price.toString()} €",
                  ),
                  const RatingBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
