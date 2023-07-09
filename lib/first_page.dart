import 'package:flutter/material.dart';
import 'package:flutter_training/data_provider.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Provider.of<DataProvider>(context, listen: false)
                .updateButtonTitle("Press me");
            Provider.of<DataProvider>(context, listen: false)
                .updatePageTitle("Page Two");
            Navigator.of(context).pushNamed("/secondPage");
          },
          child: const Text(
            "Move to Second Page",
          ),
        ),
      ),
    );
  }
}
