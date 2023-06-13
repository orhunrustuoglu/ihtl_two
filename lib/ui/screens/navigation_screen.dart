import 'package:flutter/material.dart';
import 'package:ihtl_two/ui/screens/main_screen.dart';

import 'package:lottie/lottie.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Lottie.asset("assets/animations/waiting.json"),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, MyHomePage.routeName),
            child: const Text("Navigate to Home"),
          ),
        ],
      )),
    );
  }
}
