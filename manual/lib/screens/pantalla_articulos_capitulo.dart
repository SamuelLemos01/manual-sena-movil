import 'package:flutter/material.dart';

class PantallaArticulosCapitulo extends StatelessWidget {
  final String tituloCapitulo;
  final String subtituloCapitulo;
  final List<Map<String, String>> articulos;

  const PantallaArticulosCapitulo({
    Key? key,
    required this.tituloCapitulo,
    required this.subtituloCapitulo,
    required this.articulos,
  }) : super(key: key);

  Widget _buildArticleContent(String content) {
    final List<String> paragraphs = content.split('\n\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: paragraphs.map((paragraph) {
        if (paragraph.trim().startsWith(RegExp(r'\d+\.'))) {
          // Es una lista numerada
          return Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: Text(
              paragraph,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 14),
            ),
          );
        } else if (paragraph.startsWith('Parágrafo')) {
          // Es un parágrafo
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              paragraph,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        } else {
          // Es texto normal
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              paragraph,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 14),
            ),
          );
        }
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tituloCapitulo,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color(0xFF39A900),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: articulos.length,
        itemBuilder: (context, index) {
          final articulo = articulos[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ExpansionTile(
              title: Text(
                articulo['titulo']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF39A900),
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: _buildArticleContent(articulo['descripcion']!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
} 