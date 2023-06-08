import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello world simple",
      home: Scaffold(
        appBar: AppBar(title: const Text('App Bar Title')),
        body: HelloText(),
      ),
    );
  }
}

class HelloText extends StatefulWidget {
  const HelloText({super.key});

  @override
  State<HelloText> createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> {
  String helloText = '';
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (text) => sayHello(text),
          controller: myController,
        ),
        Text(helloText)
      ],
    );
  }

  void sayHello(String text) {
    setState(() {
      helloText = 'Hello ' + text.toUpperCase() + ' !!';
    });
  }
}
