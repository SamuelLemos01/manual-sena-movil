import 'package:flutter/material.dart';

class PantallaFaltasSanciones extends StatelessWidget {
  const PantallaFaltasSanciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Faltas y Sanciones'),
          backgroundColor: const Color(0xFFF44336),
          bottom: const TabBar(
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
                ),
                FaltaItem(
                  description: 'No portar el uniforme o los elementos de protección personal.',
                  sancion: 'Llamado de atención verbal o escrito',
                ),
                FaltaItem(
                  description: 'Utilizar dispositivos electrónicos no autorizados durante la formación.',
                  sancion: 'Llamado de atención verbal o escrito',
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
                ),
                FaltaItem(
                  description: 'Ausentarse injustificadamente de las actividades formativas por más de tres días.',
                  sancion: 'Condicionamiento de matrícula',
                ),
                FaltaItem(
                  description: 'Causar daño intencional a los bienes del SENA.',
                  sancion: 'Condicionamiento de matrícula y reposición del bien',
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
                ),
                FaltaItem(
                  description: 'Consumir o distribuir sustancias psicoactivas dentro de las instalaciones del SENA.',
                  sancion: 'Cancelación de matrícula',
                ),
                FaltaItem(
                  description: 'Suplantar identidad o falsificar documentos institucionales.',
                  sancion: 'Cancelación de matrícula',
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

  const FaltaItem({
    Key? key,
    required this.description,
    required this.sancion,
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
                const Icon(Icons.warning, color: Color(0xFFF44336), size: 20),
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
                const Icon(Icons.gavel, color: Colors.grey, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Sanción: $sancion',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
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