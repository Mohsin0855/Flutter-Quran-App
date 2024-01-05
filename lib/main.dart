import 'package:flutter/material.dart';
import 'package:quran_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Set the initial route to '/splash' to start with the SplashScreen
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        // Add other routes as needed
      },
    );
  }
}
