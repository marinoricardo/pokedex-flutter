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
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.network(
                        'https://imagepng.org/wp-content/uploads/2017/11/telegram-icone-icon.png'),
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
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
