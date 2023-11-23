import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

void _showDialog(BuildContext context, String txt) {
  // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:  const Text("Message"),
          content: Text("Vous avez tapoté sur $txt!!"),
          actions: <Widget>[
            CloseButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDialog(context, "yourText"); // Replace "yourText" with the actual text you want to display
      },
      child: Container(
        // Your widget content here
        // This can be any widget that you want to be tappable to show the modal
        child: Text("Tap me to show modal!"),
      ),
    );
  }
}
