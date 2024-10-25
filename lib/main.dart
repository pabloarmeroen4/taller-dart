import 'package:flutter/material.dart';

void main() {
  runApp(MyCustomCVApp());
}

class MyCustomCVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV Personalizado',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: CustomCVScreen(),
    );
  }
}

class CustomCVScreen extends StatefulWidget {
  @override
  _CustomCVScreenState createState() => _CustomCVScreenState();
}

class _CustomCVScreenState extends State<CustomCVScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    PerfilOcupacionalScreen(),
    DatosPersonalesScreen(),
    ReferenciasLaboralesScreen(),
    EstudiosScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi CV Personalizado'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Datos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Referencias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Estudios',
          ),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white70,
      ),
    );
  }
}

class PerfilOcupacionalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          'Soy Juan Daniel Madroñero Ferrer, estudiante apasionado por la tecnología y el desarrollo de software.',
          style: TextStyle(fontSize: 18, color: Colors.amberAccent),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class DatosPersonalesScreen extends StatelessWidget {
  final String nombre = 'Juan Daniel Madroñero Ferrer';
  final String ocupacion = 'Estudiante';
  final String edad = '20 años';
  final String email = 'juandaniel@example.com';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Nombre: $nombre',
              style: TextStyle(fontSize: 18, color: Colors.white)),
          Text('Ocupación: $ocupacion',
              style: TextStyle(fontSize: 18, color: Colors.white)),
          Text('Edad: $edad',
              style: TextStyle(fontSize: 18, color: Colors.white)),
          Text('Email: $email',
              style: TextStyle(fontSize: 18, color: Colors.white)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ReferenciasLaboralesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        '1. Empresa XYZ - Cargo: Desarrollador Junior\n2. Empresa ABC - Cargo: Practicante en Tecnología',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}

class EstudiosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        '1. Ingeniería en Sistemas - Universidad XYZ\n2. Certificaciones en Flutter y Desarrollo Web',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
