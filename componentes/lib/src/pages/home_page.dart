import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista());
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(), //regresa un Future
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> opciones, BuildContext context) {
    return opciones.map((opt) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opt['texto']),
            //subtitle: Text('subtitle'),
            leading: getIcon(opt['icon']),
            trailing: getIcon('keyboard_arrow_right'),
            onTap: () {

              Navigator.pushNamed(context, opt['ruta']);
             /* final route = MaterialPageRoute(builder: (context) => AlertPage());

              Navigator.push(context, route);*/
            },
          
          ),
          Divider(
            height: 0.1,
          )
        ],
      );
    }).toList();
  }
}
