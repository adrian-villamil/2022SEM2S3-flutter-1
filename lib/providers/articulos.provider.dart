import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/articulo.model.dart';

class ArticuloProvider {
  Future<List<ArticuloModel>> obtenerArticulos() async {
    List<ArticuloModel> articulos = [];
    var client = http.Client();

    try {
      Map<String, String> parametros = {
        'q': 'tesla',
        'from': '2022-08-17',
        'sortBy': 'publishedAt',
        'apiKey': 'afcc573d93334799bae4a3222c97f93d',
      };

      var url = Uri.https('newsapi.org', 'v2/everything', parametros);
      var response = await http.get(url);
      var decodedResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

      decodedResponse["articles"]
          .forEach((e) => articulos.add(ArticuloModel.fromJson(e)));

      return articulos;
    } finally {
      client.close();
    }
  }
}
