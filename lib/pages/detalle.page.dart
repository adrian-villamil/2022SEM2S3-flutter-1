import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/articulo.model.dart';

class DetallePage extends StatelessWidget {
  DetallePage({super.key, required this.articulo});

  ArticuloModel articulo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("articulo.title")),
      body: Container(
        child: Text(articulo.title),
      ),
    );
  }
}
