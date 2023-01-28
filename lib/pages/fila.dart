// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Fila extends StatelessWidget {
  final String title;
  const Fila({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          children: [
            // Container(
            //   height: 250,
            //   width: 250,
            //   // color: Colors.lightGreen,
            //   child: Column(
            //     children: [
            //       SizedBox(
            //         height: 200,
            //         width: 200,
            //         child: Image.asset('images/produto6.png'),
            //       ),
            //       Divider(
            //         height: 20,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             title,
            //             style: TextStyle(fontSize: 16),
            //           ),
            //           Icon(
            //             Icons.favorite,
            //             color: Colors.red,
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   width: 10,
            // ),
            // Container(
            //   height: 250,
            //   width: 250,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(25)),
            //     color: Color.fromARGB(255, 223, 228, 228),
            //   ),
            //   // color: Colors.lightGreen,
            //   child: Column(
            //     children: [
            //       SizedBox(
            //         height: 200,
            //         width: 200,
            //         child: Image.asset('images/produto6.png'),
            //       ),
            //       Divider(
            //         height: 20,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 15, right: 15),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text(
            //               title,
            //               style: TextStyle(fontSize: 16),
            //             ),
            //             Icon(
            //               Icons.favorite,
            //               color: Colors.red,
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   width: 10,
            // ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
