import 'package:flutter/material.dart';
import 'package:ihtl_two/main_screen.dart';
import 'package:ihtl_two/providers/main_screen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<MainScreenProvider>(
            create: (_) => MainScreenProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          "/": (context) => const MyHomePage(),
          // MyHomePage.routeName: (context) => const MyHomePage(),
        },
      ),
    );
  }
}
