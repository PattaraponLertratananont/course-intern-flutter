// ignore_for_file: prefer_const_constructors

import 'package:course_intern/todo.dart';
import 'package:flutter/material.dart';

import 'widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/todo": (context) => TodoPage(),
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(32, 64, 32, 32),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "The art of task management",
              style: TextStyle(
                color: Color(0xff252D89), // 0x คือ Prefix ของการใช้ Hex number
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "effective task management at your fingertips",
              style: TextStyle(
                color: Color(0xff858CA7), // 0x คือ Prefix ของการใช้ Hex number
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(child: Image.asset("images/check-list.png")),
            Button(
              label: "Continue",
              onPressed: () {
                Navigator.of(context).pushNamed("/todo");
              },
            )
          ],
        ),
      ),
    );
  }
}
