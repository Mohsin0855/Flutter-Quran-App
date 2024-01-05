import 'package:flutter/material.dart';

class onBoardScreen extends StatefulWidget {
  const onBoardScreen({super.key});

  @override
  State<onBoardScreen> createState() => _onBoardScreenState();
}

class _onBoardScreenState extends State<onBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome")),
    );
  }
}
