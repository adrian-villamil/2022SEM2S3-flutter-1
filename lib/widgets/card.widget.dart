import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newnoticias/models/articulo.model.dart';
import 'package:newnoticias/pages/detalle.page.dart';
import 'package:flutter_html/flutter_html.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.articulo});

  ArticuloModel articulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetallePage(articulo: articulo),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
            child: Column(
              children: [
                Text(
                  articulo.title,
                  style: GoogleFonts.newsreader(
                      fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text(
                      'By ',
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      articulo.author,
                      style: GoogleFonts.roboto(),
                    ),
                    Text('   '),
                    Text(
                      articulo.publishedAt.split('T')[0].toString(),
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                Html(
                  data:
                      "<img src=${articulo.urlToImage} alt='&#128247;No image'/>",
                ),
                Text(
                  articulo.content,
                  style: GoogleFonts.noticiaText(fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
