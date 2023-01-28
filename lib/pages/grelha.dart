// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pokedex/controllers/pokedex_controller.dart';
import 'package:pokedex/models/pokedex.dart';

class Grelha extends StatefulWidget {
  const Grelha({Key? key}) : super(key: key);

  @override
  State<Grelha> createState() => _GrelhaState();
}

class _GrelhaState extends State<Grelha> {
  PokedexController _pokedexController = PokedexController();

  late Future<List<Pokedex>> pokedexs;
  @override
  void initState() {
    super.initState();
    pokedexs = _pokedexController.getAll();
    // print(pokedexs);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          // direction: Axis.horizontal,
          spacing: 12,
          runSpacing: 10,
          children: List.generate(8, (index) {
            return Container(
              width: 190,
              height: 190,
              color: Color.fromARGB(255, 206, 199, 199),
              child: Column(
                children: [
                  SizedBox(
                    height: 170,
                    width: 170,
                    child: Image.asset(
                      'images/produto6.png',
                    ),
                  ),
                  Text(
                    'ss',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
