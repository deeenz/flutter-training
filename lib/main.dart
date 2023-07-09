import 'package:flutter/material.dart';
import 'package:flutter_training/data_provider.dart';
import 'package:flutter_training/first_page.dart';
import 'package:flutter_training/navigation_page.dart';
import 'package:flutter_training/second_page.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(providers: [
    Provider<DataProvider>(create: (_) => DataProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blueAccent,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 100, fontWeight: FontWeight.w800),
        ),
      ),
      home: const FirstPage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(builder: (context) => const NavigationPage());
          case "/secondPage":
            return MaterialPageRoute(
              builder: (context) => const SecondPage(),
            );
          default:
            return MaterialPageRoute(builder: (context) => Container());
        }
      },
    );
  }
}
