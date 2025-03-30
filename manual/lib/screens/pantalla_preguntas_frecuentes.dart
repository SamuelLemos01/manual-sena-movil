import 'package:flutter/material.dart';

class PantallaPreguntasFrecuentes extends StatelessWidget {
  const PantallaPreguntasFrecuentes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preguntas Frecuentes'),
        backgroundColor: const Color(0xFF607D8B),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          FAQItem(
            question: '¿Cómo solicito un certificado de estudios?',
            answer: 'Puedes solicitar tu certificado de estudios a través de la plataforma Sofia Plus, en la sección "Certificados". También puedes acudir personalmente a la oficina de Administración Educativa de tu centro de formación.',
          ),
          FAQItem(
            question: '¿Qué debo hacer si falto a una jornada de formación?',
            answer: 'Debes justificar tu inasistencia dentro de los tres días hábiles siguientes, presentando los soportes correspondientes a tu instructor. Recuerda que superar el 20% de inasistencia puede ocasionar la cancelación de tu formación.',
          ),
          FAQItem(
            question: '¿Cómo puedo solicitar un traslado a otro centro de formación?',
            answer: 'Para solicitar traslado a otro centro de formación, debes presentar una solicitud formal al coordinador académico de tu programa, indicando los motivos del traslado y el centro de destino.',
          ),
          FAQItem(
            question: '¿Cuáles son las alternativas para realizar la etapa productiva?',
            answer: 'Las alternativas para la etapa productiva incluyen: contrato de aprendizaje, pasantía, proyecto productivo, monitoría, vinculación laboral y apoyo a una unidad productiva familiar.',
          ),
          FAQItem(
            question: '¿Cómo accedo a los servicios de bienestar al aprendiz?',
            answer: 'Debes dirigirte a la oficina de Bienestar al Aprendiz de tu centro de formación, donde podrás solicitar información sobre actividades deportivas, culturales, servicio médico, apoyo psicosocial y otros beneficios disponibles.',
          ),
          FAQItem(
            question: '¿Qué hacer si tengo un conflicto con un instructor o compañero?',
            answer: 'Primero intenta dialogar directamente con la persona involucrada. Si no logras una solución, puedes acudir al vocero de tu grupo, luego al coordinador académico y finalmente al comité de evaluación y seguimiento.',
          ),
        ],
      ),
    );
  }
}

// Widget para los ítems de preguntas frecuentes
class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  const FAQItem({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: ExpansionTile(
        title: Text(
          question,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(
          Icons.arrow_drop_down,
          color: Color(0xFF607D8B),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              answer,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
} 