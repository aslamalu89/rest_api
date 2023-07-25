import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class Httpspac extends StatefulWidget {
  const Httpspac({Key? key}) : super(key: key);

  @override
  State<Httpspac> createState() => _HttpspacState();
}

class _HttpspacState extends State<Httpspac> {
  String imageUrl = '';
  http.Client client = http.Client();

  Future<void> fetchImages() async {
    try {
      final response = await client.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          imageUrl = data['message'];
        });
      } else {
        // Handle other response statuses
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      // Handle other exceptions
      print('Error occurred during the HTTP request: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Fetcher')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: imageUrl.isNotEmpty ? Image.network(imageUrl, fit: BoxFit.contain) : Container(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: fetchImages,
              child: Text("Fetch Image"),
            ),
          ],
        ),
      ),
    );
  }
}