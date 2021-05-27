import 'package:flutter/material.dart';
import 'package:learning/Components/Tabs.dart';

class Dashboard extends StatefulWidget {
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  int page = 1;

  void switchPage(int page) {
    setState(() {
      this.page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () => Navigator.of(context).pop()),
                        IconButton(
                            icon: Icon(Icons.menu_outlined), onPressed: null),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 30, bottom: 30),
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8,
                      color: Colors.grey[200],
                      offset: Offset(10, 10),
                      spreadRadius: 8),
                ],
              ),
              child: Tabs(
                sw: this.switchPage,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget check(int state) {
  switch (state) {
    case 1:
      {
        return Text("First Page");
      }
    case 2:
      {
        return Text("Second Page");
      }
    case 3:
      {
        return Text("Third Page");
      }
  }
}
