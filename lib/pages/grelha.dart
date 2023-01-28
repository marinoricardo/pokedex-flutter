import 'package:flutter/material.dart';

class Grelha extends StatelessWidget {
  const Grelha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 32,
        runSpacing: 16,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
