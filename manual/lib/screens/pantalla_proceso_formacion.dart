import 'package:flutter/material.dart';

class PantallaProcesoFormacion extends StatelessWidget {
  const PantallaProcesoFormacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proceso de Formación'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'PROCESO DE FORMACIÓN',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1976D2),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'El proceso de formación en el SENA sigue una metodología basada en competencias laborales, orientada a desarrollar habilidades técnicas, conocimientos y actitudes necesarios para el desempeño laboral.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ProcesoFormacionItem(
              title: 'Formación Basada en Competencias',
              content: 'Metodología que se enfoca en el desarrollo de competencias laborales específicas requeridas por el sector productivo, garantizando una formación pertinente y de calidad.',
              icon: Icons.school,
            ),
            ProcesoFormacionItem(
              title: 'Formación por Proyectos',
              content: 'Estrategia que integra el aprendizaje a través de proyectos formativos que simulan situaciones reales del entorno laboral, permitiendo aplicar conocimientos en contextos prácticos.',
              icon: Icons.assignment,
            ),
            ProcesoFormacionItem(
              title: 'Evaluación del Aprendizaje',
              content: 'Proceso continuo que valida los conocimientos, habilidades y actitudes adquiridos durante la formación, mediante evidencias de conocimiento, desempeño y producto.',
              icon: Icons.grading,
            ),
            ProcesoFormacionItem(
              title: 'Modalidades de Formación',
              content: 'El SENA ofrece diferentes modalidades: presencial, virtual, a distancia y formación dual, adaptándose a las necesidades de los aprendices y sectores productivos.',
              icon: Icons.devices,
            ),
          ],
        ),
      ),
    );
  }
}

// Widget para los ítems del proceso de formación
class ProcesoFormacionItem extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;

  const ProcesoFormacionItem({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: const Color(0xFF1976D2)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                content,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 