import 'dart:convert';

import 'package:pokedex/models/pokedex.dart';
import 'package:http/http.dart' as http;

class PokedexController {
  Future<List<Pokedex>> getAll() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151&offset=0');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var dados = jsonDecode(response.body);

      var pokedexs = dados['results'] as List;

      return pokedexs.map((e) => Pokedex.fromJson(e)).toList();
    } else {
      throw Exception('Erro ao carregar');
    }
  }
}
