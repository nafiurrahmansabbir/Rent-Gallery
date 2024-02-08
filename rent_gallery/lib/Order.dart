import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  String msg;
  Order(
      this.msg,
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
        child: Image.asset(msg),
      ),


    );
  }
}



//  body: Center(
//         child: Image.asset(msg),
//       ),


