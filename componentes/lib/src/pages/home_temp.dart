import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }


  List<Widget> _crearItems() {
    return  opciones.map((opt) {
      return Column(
        children: <Widget>[
          ListTile(title: Text('$opt'),
          subtitle: Text('subtitle'),
          leading: Icon(Icons.account_circle),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            //este metodo causa la marca de agua al tocar

          },),
          Divider(height: 0.1,)
        ],
      );
    }).toList();
  }
}
