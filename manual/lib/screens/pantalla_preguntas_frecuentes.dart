import 'package:flutter/material.dart';

class PantallaPreguntasFrecuentes extends StatelessWidget {
  const PantallaPreguntasFrecuentes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Preguntas Frecuentes',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color(0xFF39A900),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          PreguntaFrecuenteItem(
            pregunta: '¿Qué debo hacer si no puedo asistir a una sesión de formación?',
            respuesta: 'Debes justificar tu inasistencia ante el instructor y coordinador académico, presentando los soportes correspondientes dentro de los tres días hábiles siguientes.',
            color: Color(0xFF39A900),
          ),
          PreguntaFrecuenteItem(
            pregunta: '¿Cómo puedo solicitar un certificado de estudio?',
            respuesta: 'Puedes solicitarlo a través de la plataforma Sofia Plus o directamente en la oficina de registro y certificación del centro de formación.',
            color: Color(0xFF39A900),
          ),
          PreguntaFrecuenteItem(
            pregunta: '¿Qué pasa si repruebo una competencia?',
            respuesta: 'Tendrás la oportunidad de presentar un plan de mejoramiento. Si aún así no logras aprobar, podrías perder tu condición de aprendiz.',
            color: Color(0xFF39A900),
          ),
          PreguntaFrecuenteItem(
            pregunta: '¿Cómo puedo acceder a los beneficios de bienestar al aprendiz?',
            respuesta: 'Debes estar matriculado en un programa de formación y cumplir con los requisitos específicos de cada beneficio. Consulta con el área de bienestar de tu centro.',
            color: Color(0xFF39A900),
          ),
          PreguntaFrecuenteItem(
            pregunta: '¿Puedo cambiar de jornada o de centro de formación?',
            respuesta: 'Sí, puedes solicitar el traslado justificando los motivos. La aprobación dependerá de la disponibilidad de cupos y el visto bueno de los coordinadores.',
            color: Color(0xFF39A900),
          ),
        ],
      ),
    );
  }
}

class PreguntaFrecuenteItem extends StatelessWidget {
  final String pregunta;
  final String respuesta;
  final Color color;

  const PreguntaFrecuenteItem({
    Key? key,
    required this.pregunta,
    required this.respuesta,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ExpansionTile(
        title: Text(
          pregunta,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Icon(Icons.help_outline, color: color),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              respuesta,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
} 