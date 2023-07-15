import 'package:flutter/material.dart';
import 'package:flutter_training/data_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Settings"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const SimpleDialog(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    title: Text("Simple Dialog"),
                    children: [
                      Text(
                        "Dialog Body",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "More Dialog Body",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                "Open Dialog",
              ),
            ),
          ),
        );
      },
    );
  }
}
