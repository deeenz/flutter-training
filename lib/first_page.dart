

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/entries_model.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String title = "Make api call";
  int count = 0;

  List<EntriesModel> entries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                count.toString(),
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () async {
                  final dio = Dio();

                  final response =
                      await dio.get('https://api.publicapis.org/entries');
                  count = response.data['count'];
                  entries = (response.data['entries'] as Iterable).map((e) {
                    return EntriesModel.fromJson(e);
                  }).toList();

                  title = response.data.toString();
                  setState(() {});
                },
                child: Text(
                  "Make API Call",
                  maxLines: 1,
                ),
              ),
              Column(
                children: entries
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            e.description,
                            style: TextStyle(fontSize: 14),
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
