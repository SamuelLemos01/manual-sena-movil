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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tituloCapitulo),
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
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    articulo['descripcion']!,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
} 