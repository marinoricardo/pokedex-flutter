// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unused_field, prefer_final_fields, unused_local_variable

import 'package:flutter/material.dart';

import '../controllers/pokedex_controller.dart';
import '../models/pokedex.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PokedexController _pokedexController = PokedexController();
  late Future<List<Pokedex>> pokedexs;
  @override
  void initState() {
    super.initState();
    pokedexs = _pokedexController.getAll();
    print('object');
    print(pokedexs);
  }

  @override
  Widget build(BuildContext context) {
    Future<List<Pokedex>> dados = pokedexs;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Pokedex')),
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder<List<Pokedex>>(
        future: pokedexs,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  int identificador = index + 1;
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    color: Color.fromARGB(255, 192, 188, 176),
                    child: Center(
                      // child: Text(snapshot.data![index].name!),
                      child: Column(
                        children: [
                          Image.network(
                            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${identificador}.png',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            snapshot.data![index].name!.toUpperCase(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  height: 10,
                ),
                Text('Processando..'),
              ],
            ),
          );
        },
      ),
    );
  }
}
