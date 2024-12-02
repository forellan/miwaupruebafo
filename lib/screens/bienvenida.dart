import 'package:flutter/material.dart';
import 'login.dart';

class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen centrada
            Container(
              width: 150,
              height: 150,
              child: Image.asset(
                'assets/images/mi_imagen.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20), // Espacio entre la imagen y el texto
            Text(
              '¡Bienvenido a MIWAU!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text('Empezar'),
            ),
          ],
        ),
      ),
    );
  }
}
