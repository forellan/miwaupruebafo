import 'package:flutter/material.dart';
import 'producto.dart';
import 'contacto.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> nombresProductos = [
    'Alimento para Gatos',
    'Juguete para Perros',
    'Arena para Gatos',
    'Correa para Perros',
  ];

  final List<String> descripciones = [
    'Alimento premium para gatos adultos.',
    'Juguete interactivo para perros.',
    'Arena para gatos altamente absorbente.',
    'Correa resistente y ajustable para perros.',
  ];

  List<String> precios = [
    '25.000',
    '15.000',
    '12.000',
    '20.000',
  ];

  void actualizarPrecio(int index, String nuevoPrecio) {
    setState(() {
      precios[index] = nuevoPrecio;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 255, 255),
      appBar: AppBar(
        title: Text('MIWAU Productos disponibles'),
        backgroundColor: Color.fromARGB(255, 0, 255, 255),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              children: List.generate(nombresProductos.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Producto(
                          index: index,
                          descripcion: descripciones[index],
                          precio: precios[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.pets,
                            size: 50, color: Color.fromRGBO(0, 102, 102, 1)),
                        SizedBox(height: 10),
                        Text(nombresProductos[index],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('\$${precios[index]}'),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contacto()),
                  );
                },
                child: Text('Nuestro contacto'),
                style: ElevatedButton.styleFrom(
                    iconColor: Color.fromARGB(255, 1, 255, 255))),
          ),
        ],
      ),
    );
  }
}
