import "package:flutter/material.dart";
import 'package:learning/Pages/Signup.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int finalans = 23 + 30;
  double height = 200;
  bool fullheight = false;
  Color color = Colors.yellow[600];
  Color darkMode = Colors.white;

  void pressMe() {
    print("Clicked!");
    setState(() {
      // fullheight ? height = 200 : height = 300;
      if (fullheight == true) {
        color = Colors.purple;
        // darkMode = Colors.grey[700];
        height = 200;
        fullheight = false;
      } else {
        color = Colors.yellow[600];
        // darkMode = Colors.white;
        height = 300;
        fullheight = true;
      }
      // height = 300.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      color: darkMode,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: pressMe,
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: fullheight == true ? Curves.easeIn : Curves.decelerate,
              width: height,
              height: height,
              color: color,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              },
              child: Text(
                "Go to page2",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            ),
          )
        ],
      )),
    );
  }
}
