import 'package:flutter/material.dart';
import 'package:learning/Pages/Signup.dart';
import 'package:learning/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => MainApp());
      case "/signup":
        if (args is String) {
          return MaterialPageRoute(builder: (_) => Signup(id: args));
        }
        return MaterialPageRoute(builder: (_) => ErrorRoute());
      default:
        return MaterialPageRoute(builder: (_) => ErrorRoute());
    }
  }
}

class ErrorRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Error, Please go back"),
          Container(
            child: ElevatedButton(
              child: Text("Fo Back"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
