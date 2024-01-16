import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en flutter')),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) =>  ListTile(
          leading: Icon(menuOptions[i].icon),
          title: Text(menuOptions[i].name),
          onTap: () {
            // final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
            Navigator.pushNamed(context,menuOptions[i].route);
          },
        ), 
      separatorBuilder: (_, __) => const Divider(),
      itemCount: menuOptions.length)
    );
  }
}