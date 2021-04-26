import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final Function sw;
  Tabs({@required this.sw});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.blue[400],
                  size: 35,
                ),
                onPressed: () => sw(1)),
            Text("Home")
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.blue[400],
                  size: 35,
                ),
                onPressed: () => sw(2)),
            Text("Calender")
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(
                  Icons.verified_user_outlined,
                  color: Colors.blue[400],
                  size: 35,
                ),
                onPressed: () => sw(3)),
            Text("Profile")
          ],
        ),
      ],
    );
  }
}
