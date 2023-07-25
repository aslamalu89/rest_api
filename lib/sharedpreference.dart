import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shareds extends StatefulWidget {
  const Shareds({super.key});

  @override
  State<Shareds> createState() => _SharedsState();
}

class _SharedsState extends State<Shareds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "Email"
            ),
          ),
          TextField(decoration: InputDecoration(
            labelText: "Password"
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ()async{
            }, child: Text("Login")),
          )
        ],
      ),
    );
  }
}
