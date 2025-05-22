import 'package:chat_app/pages/chatbot.page.dart';
import 'package:chat_app/pages/login.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        '/bot': (context) => ChatBotPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
    );
  }
}
