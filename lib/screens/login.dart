import 'package:flutter/material.dart';
import 'dashboard.dart'; // Asegúrate de importar la pantalla de Dashboard

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nombreUsuario = TextEditingController();
  final TextEditingController contraPSW = TextEditingController();

  bool _isValidLogin = true;

  void _login() {
    String usuario = nombreUsuario.text;
    String contra = contraPSW.text;

    if (usuario.isNotEmpty && contra.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    } else {
      setState(() {
        _isValidLogin = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar sesión'),
        backgroundColor: Color.fromARGB(255, 0, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/mi_imagen.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 40),
            Text(
              'Nombre de Usuario o Correo:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: nombreUsuario,
              decoration: InputDecoration(
                hintText: 'Ingresa tu usuario o correo',
                errorText: !_isValidLogin
                    ? 'Por favor ingresa un usuario válido'
                    : null,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Contraseña:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: contraPSW,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Ingresa tu contraseña',
                errorText: !_isValidLogin
                    ? 'Por favor ingresa una contraseña válida'
                    : null,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _login,
              child: Text('Iniciar sesión'),
              style: ElevatedButton.styleFrom(
                  iconColor: Color.fromARGB(255, 0, 255, 255)),
            ),
          ],
        ),
      ),
    );
  }
}
