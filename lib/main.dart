import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currículum Vitae',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CVScreen(),
    );
  }
}

class CVScreen extends StatelessWidget {
  final String nombre = 'Juan Daniel Madroñero Ferrer';
  final String ocupacion = 'Estudiante';
  final String edad = '20 años';
  final String email = 'juandaniel@example.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currículum Vitae'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil Ocupacional'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PerfilOcupacionalScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Datos Personales'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DatosPersonalesScreen(
                          nombre, ocupacion, edad, email)),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Referencias Laborales'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReferenciasLaboralesScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Estudios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EstudiosScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenido a mi Currículum Vitae'),
      ),
    );
  }
}

class PerfilOcupacionalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil Ocupacional'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Soy Juan Daniel Madroñero Ferrer, estudiante apasionado por la tecnología y el desarrollo de software.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class DatosPersonalesScreen extends StatelessWidget {
  final String nombre;
  final String ocupacion;
  final String edad;
  final String email;

  DatosPersonalesScreen(this.nombre, this.ocupacion, this.edad, this.email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Personales'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nombre: $nombre', style: TextStyle(fontSize: 18)),
            Text('Ocupación: $ocupacion', style: TextStyle(fontSize: 18)),
            Text('Edad: $edad', style: TextStyle(fontSize: 18)),
            Text('Email: $email', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

class ReferenciasLaboralesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Referencias Laborales'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '1. Empresa XYZ - Cargo: Desarrollador Junior\n2. Empresa ABC - Cargo: Practicante en Tecnología',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class EstudiosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudios'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '1. Ingeniería en Sistemas - Universidad XYZ\n2. Certificaciones en Flutter y Desarrollo Web',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
