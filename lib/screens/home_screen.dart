import 'package:flutter/material.dart';


import 'package:notas_app/widgets/shared/custom_fab.dart';
import 'package:notas_app/widgets/home/menu_drawer.dart';
import 'package:notas_app/widgets/home/project_grid.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proyectos"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(59, 74, 126, 1),
      ),
      drawer: MenuDrawer(),
      body: ProjectGrid(),
      backgroundColor: Color.fromRGBO(225, 225, 225, 1),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
   );
  }
}

