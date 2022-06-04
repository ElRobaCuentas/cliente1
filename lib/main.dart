import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      home: inicio(),
    );
  }
}

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(146, 32, 3, 60),
        title: Text('Pantalla de inicio'),
      ),
      body: cuerpo(),
    );
  }
}

class cuerpo extends StatelessWidget {
  const cuerpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/53/67/02/53670256e1dc221b4815dc878ba395f2.jpg"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iniciarSesion(),
            SizedBox(height: 10.0),
            usuario(),
            contrasena(),
            botonEntrar(),
          ],
        ),
      ),
    );
  }
}

class iniciarSesion extends StatelessWidget {
  const iniciarSesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Iniciar Sesión',
      style: TextStyle(color: Colors.white, fontSize: 35.0),
    );
  }
}

class usuario extends StatelessWidget {
  const usuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Usuario',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class contrasena extends StatelessWidget {
  const contrasena({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class botonEntrar extends StatelessWidget {
  const botonEntrar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.white12,
      onPressed: () {},
      child: Text(
        'Entrar',
        style: TextStyle(color: Colors.white, fontSize: 15.0),
      ),
    );
  }
}
