import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({Key? key}) : super(key: key);

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  List<bool> _ratings = [false, false, false];

  void _setRating(int index) {
    setState(() {
      for (int i = 0; i < _ratings.length; i++) {
        if (i <= index) {
          _ratings[i] = true;
        } else {
          _ratings[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> starIcons = [];

    for (int i = 0; i < _ratings.length; i++) {
      starIcons.add(
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: _ratings[i] ? const Icon(Icons.star) : const Icon(Icons.star_border),
            color: Colors.red[500],
            iconSize: 20,
            onPressed: () => _setRating(i),
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
