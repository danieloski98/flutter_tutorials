// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import './Signup.dart';

// void main() {
//   runApp(LandingPage());
// }

// class LandingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: true,
//       home: Scaffold(
//         body: SafeArea(
//           top: false,
//           bottom: false,
//           child: Container(
//             width: double.infinity,
//             height: double.infinity,
//             color: Colors.grey[900],
//             padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Center(
//                     child: SvgPicture.asset(
//                       'assets/images/flutterimg.svg',
//                       height: 250,
//                       width: 150,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 50),
//                   child: Text(
//                     "Enterprise Team Collaboration.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 35,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 20),
//                   child: Text(
//                     "Bring together your files, your tools, project and people. Including a new mobile and desktop application",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.transparent,
//                     child: Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Container(
//                         width: double.infinity,
//                         height: 100,
//                         color: Colors.transparent,
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               left: 170,
//                               child: Container(
//                                 width: 200,
//                                 height: 65,
//                                 child: ElevatedButton(
//                                   onPressed: null,
//                                   child: Text(
//                                     "Register",
//                                     style: TextStyle(
//                                       color: Colors.grey[100],
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                   style: ButtonStyle(
//                                     backgroundColor:
//                                         MaterialStateProperty.all<Color>(
//                                       Colors.grey[700].withOpacity(0.4),
//                                     ),
//                                     shape: MaterialStateProperty.all<
//                                         RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.only(
//                                           bottomRight: Radius.circular(18.0),
//                                           topRight: Radius.circular(18.0),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               child: Container(
//                                 width: 200,
//                                 height: 65,
//                                 child: ElevatedButton(
//                                   onPressed: () => Navigator.of(context).push(
//                                     MaterialPageRoute(
//                                       builder: (context) => Signup(),
//                                     ),
//                                   ),
//                                   child: Text(
//                                     "Login",
//                                     style: TextStyle(
//                                       color: Colors.grey[700],
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                   style: ButtonStyle(
//                                     backgroundColor:
//                                         MaterialStateProperty.all(Colors.white),
//                                     shape: MaterialStateProperty.all<
//                                         RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(18.0),
//                                         side: BorderSide(
//                                             color: Colors.transparent),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
