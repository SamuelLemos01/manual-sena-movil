import 'package:flutter/material.dart';

class PantallaEtapasFormacion extends StatelessWidget {
  const PantallaEtapasFormacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Etapas de Formación',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color(0xFF1E5631),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'ETAPAS DE FORMACIÓN',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E5631),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'La formación en el SENA se desarrolla a través de diferentes etapas secuenciales que permiten al aprendiz adquirir gradualmente las competencias necesarias para su desempeño laboral.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            EtapaFormacionCard(
              title: 'Etapa Lectiva',
              description: 'Período durante el cual el aprendiz desarrolla las competencias técnicas y transversales del programa de formación a través de actividades teórico-prácticas.',
              duration: '75% del tiempo total de formación',
              color: const Color(0xFF1E5631),
            ),
            EtapaFormacionCard(
              title: 'Etapa Productiva',
              description: 'Período en el que el aprendiz aplica los conocimientos y habilidades adquiridos en un entorno real de trabajo, mediante diversas alternativas como prácticas empresariales, contratos de aprendizaje o proyectos productivos.',
              duration: '25% del tiempo total de formación',
              color: const Color(0xFF1E5631),
            ),
            EtapaFormacionCard(
              title: 'Formación Complementaria',
              description: 'Programas adicionales de corta duración que permiten al aprendiz fortalecer competencias específicas según las necesidades del sector productivo.',
              duration: 'Variable según el programa',
              color: const Color(0xFF1E5631),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget para las etapas de formación
class EtapaFormacionCard extends StatelessWidget {
  final String title;
  final String description;
  final String duration;
  final Color color;

  const EtapaFormacionCard({
    Key? key,
    required this.title,
    required this.description,
    required this.duration,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.timer, size: 16, color: Colors.grey),
                const SizedBox(width: 6),
                Text(
                  'Duración: $duration',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
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