import 'package:flutter/material.dart';


import 'package:notas_app/widgets/custom_floating_button.dart';
import 'package:notas_app/widgets/project_grid.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proyectos"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(59, 74, 126, 1),
      ),
      body: ProjectGrid(),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
   );
  }
}

