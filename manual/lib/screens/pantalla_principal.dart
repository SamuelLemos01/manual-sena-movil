import 'package:flutter/material.dart';
import 'pantalla_reglamento.dart';
import 'pantalla_derechos_deberes.dart';
import 'pantalla_proceso_formacion.dart';
import 'pantalla_etapas_formacion.dart';
import 'pantalla_faltas_sanciones.dart';
import 'pantalla_preguntas_frecuentes.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lista de opciones del menú con tonalidades verdes del SENA
    final List<Map<String, dynamic>> menuItems = [
      {
        'title': 'Reglamento',
        'icon': Icons.rule_folder,
        'color': const Color(0xFF39A900), // Verde SENA principal
        'route': const PantallaReglamento(),
      },
      {
        'title': 'Derechos y Deberes',
        'icon': Icons.balance,
        'color': const Color(0xFF2D7F00), // Verde SENA oscuro
        'route': const PantallaDerechosDeberes(),
      },
      {
        'title': 'Proceso de Formación',
        'icon': Icons.school,
        'color': const Color(0xFF4BC800), // Verde SENA claro
        'route': const PantallaProcesoFormacion(),
      },
      {
        'title': 'Etapas de Formación',
        'icon': Icons.stairs,
        'color': const Color(0xFF1E5631), // Verde SENA muy oscuro
        'route': const PantallaEtapasFormacion(),
      },
      {
        'title': 'Faltas y Sanciones',
        'icon': Icons.warning,
        'color': const Color(0xFF2D7F00), // Verde SENA oscuro
        'route': const PantallaFaltasSanciones(),
      },
      {
        'title': 'Preguntas Frecuentes',
        'icon': Icons.help,
        'color': const Color(0xFF39A900), // Verde SENA principal
        'route': const PantallaPreguntasFrecuentes(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reglamento del Aprendiz SENA',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color(0xFF39A900),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo_sena.png',
                    height: 70,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bienvenido al Reglamento del Aprendiz SENA',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.1,
              ),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return TarjetaMenu(
                  title: menuItems[index]['title'],
                  icon: menuItems[index]['icon'],
                  color: menuItems[index]['color'],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => menuItems[index]['route'],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            const Text(
              'Desarrollado por:\nMoises Cartagena Arteaga, Instructor lider\nJimmy Alexander Lombana, Instructor\nDiego Samuel Lemos, Aprendiz\nFicha: ADSO 2741663',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

// Widget para las tarjetas del menú
class TarjetaMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const TarjetaMenu({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: color,
              ),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 