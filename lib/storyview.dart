import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String pics;
  final String people;

  FullScreenImage(
      {required this.pics,
      required this.people}); // Receive the image path in the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(people),
      ),
      body: Center(
        child: Image(image: AssetImage(pics)), // Display the full image
      ),
    );
  }
}
