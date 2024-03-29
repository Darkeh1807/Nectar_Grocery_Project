import 'package:flutter/material.dart';
import 'package:nectar_grocery_app/views/navigation_page.dart';

import 'package:nectar_grocery_app/views/onboarding_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const OnboardingScreen(),
    );
  }
}
