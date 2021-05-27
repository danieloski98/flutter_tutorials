import 'package:flutter/material.dart';
import 'package:learning/Routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: true,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 200,
              left: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "April 2021",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[300]),
                  ),
                  Text(
                    "28",
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 200,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 620,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Solomon,",
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      "You have 12 active patient lists",
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed('/signup', arguments: "12636"),
                      child: Text(
                        "View Patients Here",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blue[900],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 460,
              left: 200,
              child: Image.asset(
                'assets/images/xxz.png',
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
