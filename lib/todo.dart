// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'widgets/button.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 64, bottom: 32, left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(),
            description(),
            SizedBox(height: 16, width: 1),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 228, 228, 228),
                    blurRadius: 8,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Row(
                children: [
                  Checkbox(value: true, onChanged: (check) {}),
                  Text("Buy milk")
                ],
              ),
            ),
            Expanded(child: Container()),
            Button(
              label: "Add Todo",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Text description() {
    return Text(
      "you have 3 tasks remain for today",
      style: TextStyle(
        color: Color(0xff858CA7),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.left,
    );
  }

  Text title() {
    return Text(
      "My Todo",
      style: TextStyle(
        color: Color(0xff252D89),
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
      textAlign: TextAlign.left,
    );
  }
}
