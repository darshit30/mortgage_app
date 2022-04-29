// import 'package:flutter/material.dart';
// import 'package:mortgage_app/Screens/home_screen.dart';

// import '../navigation_drawer.dart';
// import 'compare.dart';

// class Options extends StatelessWidget {
//   const Options({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         drawer: NavigationDrawerWidget(),
//         body: Column(children: [
//           Image(
//             image: AssetImage(
//               'assets/image/home_Image.png',
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.only(top: 70),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 45),
//                       child: TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const HomeScreen()));
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.indigo,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.yellow,
//                                 blurRadius: 2,
//                               ),
//                             ],
//                             borderRadius: BorderRadius.all(Radius.circular(15)),
//                           ),
//                           height: 100,
//                           width: 100,
//                           child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.calculate,
//                                     color: Colors.white, size: 40),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text(
//                                   "Calculate",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ]),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 45),
//                       child: TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const HomeScreenS()));
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.indigo,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.yellow,
//                                 blurRadius: 2,
//                               ),
//                             ],
//                             borderRadius: BorderRadius.all(Radius.circular(15)),
//                           ),
//                           height: 100,
//                           width: 100,
//                           child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.compare_arrows_rounded,
//                                   size: 40,
//                                   color: Colors.white,
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text(
//                                   "Compare",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ]),
//                         ),
//                       ),
//                     ),
//                   ]))
//         ]));
//   }
// }
