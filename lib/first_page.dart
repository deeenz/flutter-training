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
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              builder: (context) => Container(
                alignment: Alignment.center,
                height: 400,
                child: Text(
                  "Bottom sheet is opened!",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
          child: const Text(
            "Open Bottomsheet",
          ),
        ),
      ),
    );
  }
}
