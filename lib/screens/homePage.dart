import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_simplon/screens/test_home_page.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final String title = 'Flutter Demo Home Page';
  int _counter = 0; 
  

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _showDialog(BuildContext context, String txt) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Message"),
          content: Text(
            "Vous avez tapoté sur \n$txt!! \n😀",
            style: const TextStyle(fontSize: 18.0, color: Colors.blueAccent),
            textAlign: TextAlign.center,
          ),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You have pushed the button $_counter many times:",
              style: const TextStyle(color: Color(0xffff0000)),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Hello ",
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: "World",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Image.asset(
              "assets/img/smiley.png",
              width: 50,
            ),
            ElevatedButton(
              onPressed: () {
                _showDialog(
                  context,
                  "la boite mail qui est vide ",
                );
              },
              child: const Icon(Icons.email),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.remove),
      ),
    ],
  ),
      persistentFooterButtons: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TestHomePage()),
            );
          },
          child: const Row(
            children: [
              Text('Aller à la Test Home Page'),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ],
    );
  }
}
