import 'package:flutter/material.dart';
import 'package:rent_gallery/Card.dart';

class Details extends StatelessWidget {
  String img;
  Details(
      this.img,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Details'),
      ),
      body: Center(
        child: MyCard(img),
      ),


    );
  }
}



//  body: Center(
//         child: Image.asset(msg),
//       ),


