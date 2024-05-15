import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import './createPost.dart';
import 'results.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  TextEditingController search = TextEditingController();
  TextEditingController dummyOne = TextEditingController();
  TextEditingController dummyTwo = TextEditingController();
  TextEditingController dummyThree = TextEditingController();
  TextEditingController dummyFour = TextEditingController();

  @override
  void initState(){
    super.initState();
    int count = 0;
  }

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
                    controller: search,
                  ),
                  TextButton.icon(
                      onPressed: () async { 
                        final msg = jsonEncode({"searchTerm": "Kurkure"});
                        final response = await createPost("https://takeit-today-12b81d775d64.herokuapp.com/shop/inventory/get/products/based/on/name", body: {"searchTerm": search.text});
                        final responseData = jsonDecode(response.body);
                        // ignore: avoid_print
                        print(responseData);
                        // Get.to(() => const ResultsScreen());
                      },
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
                    controller: dummyOne,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Dummy Data"),
                    controller: dummyTwo,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Dummy Data"),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Dummy Data"),
                  ),
                  TextButton.icon(
                      onPressed: () {
                        print("Button pressed");
                      },
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
