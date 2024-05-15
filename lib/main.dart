import 'dart:convert';

import 'package:dumback/mainscreen.dart';
import 'package:dumback/results.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:http/http.dart' as http;


void main() async {
  // final response = await createPost("https://takeit-today-12b81d775d64.herokuapp.com/api/auth/isauthenticated", headers: {"Content-Type": "application/json"},);
  // if(response.statusCode == 200){
  //   print("Post created successfully");
  //   final responseData = jsonDecode(response.body);
  //   print('isAuthenticated: ${responseData['isAuthenticated']}');
  // }else{
  //   print("Failed to get");
  // }
  // print("-------------------------------------------------------Hello World---------------------------------------------------");
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState(){
    super.initState();
    int count = 0;
    print("hello world");
  }

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MainScreen(),
    );
  }
}
