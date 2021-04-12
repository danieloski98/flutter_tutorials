import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.blue,
              size: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Go Back"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
