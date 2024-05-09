import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';

import 'results.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              color: Colors.blueGrey,
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(fillColor: Colors.white),
                  ),
                  TextButton.icon(
                      onPressed: () => Get.to(() => const ResultsScreen()),
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      label: const Text("Search")),
                  SizedBox(
                    width: Get.width / 2,
                    height: Get.height / 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Dummy Data"),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Dummy Data"),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Dummy Data"),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Dummy Data"),
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.approval_rounded),
                      label: const Text("Done"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
