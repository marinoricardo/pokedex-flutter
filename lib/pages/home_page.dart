// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokedex/controllers/pokedex_controller.dart';
import 'package:pokedex/models/pokedex.dart';
import 'package:pokedex/pages/fila.dart';
import 'package:pokedex/pages/grelha.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  PokedexController _pokedexController = PokedexController();

  late Future<List<Pokedex>> pokedexs;
  @override
  void initState() {
    super.initState();
    pokedexs = _pokedexController.getAll();
    print(pokedexs);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Pokedex'),
      //   backgroundColor: Colors.red,
      // ),
      body: Column(
        children: [
          Container(
            height: 120,
            color: Colors.amberAccent,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                  Text(
                    'Pokedex App',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.logout)
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Produtos Populares'),
                  Icon(Icons.g_translate),
                ],
              ),
            ),
          ),
          Fila(
            title: 'Nome',
          ),
          ListTile(
            title: Text('Marino Ricardo'),
          ),
        ],
      ),
    );
  }
}
