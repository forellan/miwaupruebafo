import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 255, 255),
      appBar: AppBar(
        title: Text('Contacto'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¡Estamos aquí para ayudarte!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Text(
                'Correo electrónico:',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'miwaucontacto@ejemplo.com',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Teléfono:',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '+569 12345678',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Volver al Dashboard
                },
                child: Text('Volver'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 1, 255, 255)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
