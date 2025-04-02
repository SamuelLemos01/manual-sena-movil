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
    // Lista de opciones del menú
    final List<Map<String, dynamic>> menuItems = [
      {
        'title': 'Reglamento',
        'icon': Icons.rule_folder,
        'color': const Color(0xFF39A900),
        'route': const PantallaReglamento(),
      },
      {
        'title': 'Derechos y Deberes',
        'icon': Icons.balance,
        'color': const Color(0xFF007832),
        'route': const PantallaDerechosDeberes(),
      },
      {
        'title': 'Proceso de Formación',
        'icon': Icons.school,
        'color': const Color(0xFF00304D),
        'route': const PantallaProcesoFormacion(),
      },
      {
        'title': 'Etapas de Formación',
        'icon': Icons.stairs,
        'color': const Color(0xFF71277A),
        'route': const PantallaEtapasFormacion(),
      },
      {
        'title': 'Faltas y Sanciones',
        'icon': Icons.warning,
        'color': const Color(0xFF50E5F9),
        'route': const PantallaFaltasSanciones(),
      },
      {
        'title': 'Preguntas Frecuentes',
        'icon': Icons.help,
        'color': const Color(0xFFFDC300),
        'route': const PantallaPreguntasFrecuentes(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manual SENA',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF39A900),
      ),
      body: Column(
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
          Expanded(
            child: GridView.builder(
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
          ),
        ],
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