import 'package:flutter/material.dart';
import 'chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chap App',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const ChatScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
