import 'package:flutter/material.dart';

class PantallaFaltasSanciones extends StatelessWidget {
  const PantallaFaltasSanciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Faltas y Sanciones',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: const Color(0xFF2D7F00),
          bottom: const TabBar(
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            tabs: [
              Tab(text: 'LEVES'),
              Tab(text: 'GRAVES'),
              Tab(text: 'GRAVÍSIMAS'),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            // Faltas leves
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                FaltaItem(
                  description: 'Llegar tarde a las actividades formativas sin justificación.',
                  sancion: 'Llamado de atención verbal',
                  color: Color(0xFF2D7F00),
                ),
                FaltaItem(
                  description: 'No portar el uniforme o los elementos de protección personal.',
                  sancion: 'Llamado de atención verbal o escrito',
                  color: Color(0xFF2D7F00),
                ),
                FaltaItem(
                  description: 'Utilizar dispositivos electrónicos no autorizados durante la formación.',
                  sancion: 'Llamado de atención verbal o escrito',
                  color: Color(0xFF2D7F00),
                ),
              ],
            ),
            // Faltas graves
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                FaltaItem(
                  description: 'Presentar evidencias de aprendizaje que no son de su autoría (plagio).',
                  sancion: 'Llamado de atención escrito y plan de mejoramiento',
                  color: Color(0xFF2D7F00),
                ),
                FaltaItem(
                  description: 'Ausentarse injustificadamente de las actividades formativas por más de tres días.',
                  sancion: 'Condicionamiento de matrícula',
                  color: Color(0xFF2D7F00),
                ),
                FaltaItem(
                  description: 'Causar daño intencional a los bienes del SENA.',
                  sancion: 'Condicionamiento de matrícula y reposición del bien',
                  color: Color(0xFF2D7F00),
                ),
              ],
            ),
            // Faltas gravísimas
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                FaltaItem(
                  description: 'Agredir física o verbalmente a cualquier miembro de la comunidad SENA.',
                  sancion: 'Cancelación de matrícula',
                  color: Color(0xFF2D7F00),
                ),
                FaltaItem(
                  description: 'Consumir o distribuir sustancias psicoactivas dentro de las instalaciones del SENA.',
                  sancion: 'Cancelación de matrícula',
                  color: Color(0xFF2D7F00),
                ),
                FaltaItem(
                  description: 'Suplantar identidad o falsificar documentos institucionales.',
                  sancion: 'Cancelación de matrícula',
                  color: Color(0xFF2D7F00),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget para los ítems de faltas y sanciones
class FaltaItem extends StatelessWidget {
  final String description;
  final String sancion;
  final Color color;

  const FaltaItem({
    Key? key,
    required this.description,
    required this.sancion,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.warning, color: color, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const Divider(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.gavel, color: color, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Sanción: $sancion',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 