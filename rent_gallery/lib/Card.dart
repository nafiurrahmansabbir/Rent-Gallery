import 'package:flutter/material.dart';
import 'FullScreenImage.dart';
void showAlert(BuildContext context, String title, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
class MyCard extends StatelessWidget {
  String img;
  MyCard(
      this.img,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullScreenImage(img),
                ),
              );
            },
            child: Image.asset(
              img,
              width: 300,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Text(
              '\t\t\t\t\t\t\tHey,There\nI am available now',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showAlert(context, 'Waiting', 'Waiting for confirmation');
              },
              child: Text('Booking'),
            ),
          ),
        ],
      ),
    );
  }
}


