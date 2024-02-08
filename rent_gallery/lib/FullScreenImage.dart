import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String img;

  FullScreenImage(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Picture"),
      ),
      body: Center(
        child: Image.asset(
          img,
        ),
      ),
    );
  }
}