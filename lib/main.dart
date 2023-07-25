import 'package:flutter/material.dart';
import 'package:shared_preference/restapi.dart';
import 'package:shared_preference/sharedpreference.dart';

import 'httppack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Restapi()
    );
  }
}
