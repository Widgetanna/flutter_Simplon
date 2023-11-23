import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({Key? key}) : super(key: key);

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  void _setRating(int index) {
    setState(() {
      if (_rating == index) {
        // Si l'étoile est déjà sélectionnée, désélectionner au clic suivant
        _rating = 0; 
      } else {
        _rating = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> starIcons = [];

    for (int i = 0; i < 3; i++) {
      starIcons.add(
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: _rating > i ? const Icon(Icons.star) : const Icon(Icons.star_border),
            color: Colors.red[500],
            iconSize: 20,
            onPressed: () =>  _setRating(i + 1),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: starIcons,
    );
  }
}
