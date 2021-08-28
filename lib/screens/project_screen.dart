import 'dart:math' show pi;
import 'package:flutter/material.dart';

import 'package:notas_app/widgets/shared/custom_checkbox.dart';
import 'package:notas_app/widgets/shared/custom_fab.dart';
import 'package:notas_app/widgets/shared/custom_navbar.dart';
import 'package:notas_app/widgets/shared/description_card.dart';
import 'package:notas_app/widgets/shared/label_list.dart';


class ProjectScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo proyecto"),
        actions: [

          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){},
          )
          
        ],
        backgroundColor: Theme.of(context).primaryColor
      ),
      backgroundColor: Color.fromRGBO(225, 225, 225, 1),
      body: Column(
        children: [
          ProjectDescriptionCard(),
          _ListOfTodo(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _ListOfTodo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return _TodoItem(
          title: "Nombre de la tarea",
          selectedImportancy: "medium",
        );
      },
    );
    
  }
}

class _TodoItem extends StatelessWidget {

  final String selectedImportancy;
  final String title;
  final Map<String, Color> importancy = {
    "low": Color.fromRGBO(43, 208, 99, 1),
    "medium": Color.fromRGBO(240, 157, 59, 1),
    "high": Color.fromRGBO(243, 91, 91, 1)
  };

  _TodoItem({
    required this.title,
    required this.selectedImportancy,
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: 100,
        height: 80,
        decoration: _createDecoration(),
        child: _TodoItemBody(
          title: title, 
          importancy: importancy, 
          selectedImportancy: selectedImportancy
        ),
      ),
      onTap: () => {
        Navigator.pushNamed(context, "task")
      },
    );

  }

  BoxDecoration _createDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 6,
            offset: Offset(0,5)
          )
        ]
      );
  }
  
}

class _TodoItemBody extends StatelessWidget {

  const _TodoItemBody({
    required this.title,
    required this.importancy,
    required this.selectedImportancy,
  });

  final String title;
  final Map<String, Color> importancy;
  final String selectedImportancy;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        SizedBox(width: 10,),

        CustomCheckBox(
          value: true,
          width: 30,
          height: 30,
          onSelect: (value) => null
        ),

        SizedBox(width: 15,),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(this.title, style: TextStyle(color: Color.fromRGBO(101, 101, 101, 1),fontSize: 25, fontWeight: FontWeight.bold), maxLines: 1,),

            LabelList(width: 280,),

          ],
        ),

        Expanded(child: Container()),

        Transform.rotate(
          child: Icon(Icons.label_important, color: this.importancy["${this.selectedImportancy}"], size: 45,),
          angle: -180 * pi / 360,
        ),

        SizedBox(width: 10,)

      ],
    );
  }
}



