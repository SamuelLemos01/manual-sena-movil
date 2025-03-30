import 'package:flutter/material.dart';

class PantallaDerechosDeberes extends StatelessWidget {
  const PantallaDerechosDeberes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Derechos y Deberes'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'DERECHOS'),
              Tab(text: 'DEBERES'),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            // Contenido de Derechos
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ListTile(
                  leading: Icon(Icons.check_circle, color: Color(0xFF39A900)),
                  title: Text('Recibir formación profesional integral de calidad'),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Color(0xFF39A900)),
                  title: Text('Ser evaluado con transparencia y equidad'),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Color(0xFF39A900)),
                  title: Text('Recibir oportunamente los resultados de las evaluaciones'),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Color(0xFF39A900)),
                  title: Text('Acceder a la infraestructura y materiales de formación'),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Color(0xFF39A900)),
                  title: Text('Recibir trato respetuoso de toda la comunidad'),
                ),
              ],
            ),
            // Contenido de Deberes
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ListTile(
                  leading: Icon(Icons.arrow_right, color: Color(0xFFFF6600)),
                  title: Text('Cumplir con las normas establecidas'),
                ),
                ListTile(
                  leading: Icon(Icons.arrow_right, color: Color(0xFFFF6600)),
                  title: Text('Asistir puntualmente a todas las actividades'),
                ),
                ListTile(
                  leading: Icon(Icons.arrow_right, color: Color(0xFFFF6600)),
                  title: Text('Presentar evidencias de aprendizaje en los plazos establecidos'),
                ),
                ListTile(
                  leading: Icon(Icons.arrow_right, color: Color(0xFFFF6600)),
                  title: Text('Participar activamente en el proceso de formación'),
                ),
                ListTile(
                  leading: Icon(Icons.arrow_right, color: Color(0xFFFF6600)),
                  title: Text('Mantener conducta ética y respetuosa'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 