
import 'package:flutter/material.dart';
import 'dart:math' show pi;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notas_app/widgets/shared/custom_checkbox.dart';
import 'package:notas_app/widgets/shared/custom_navbar.dart';
import 'package:notas_app/widgets/shared/label_list.dart';
import 'package:notas_app/widgets/shared/paper_background.dart';


class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [

          IconButton(
            icon: Icon(Icons.new_label, size: 30,),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.edit),
            onPressed: (){},
          ),

        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: PaperBackground(
          hasTopBar: false,
          height: 650,
          info: _PaperBackgroundInfo(),
          text: "Deserunt Lorem deserunt esse nostrud pariatur consectetur ea duis Lorem commodo deserunt. Tempor aute commodo laborum amet nostrud ex nisi in cupidatat. Id eu reprehenderit eiusmod laborum esse eiusmod quis deserunt ut id excepteur incididunt. Reprehenderit duis veniam aute adipisicing reprehenderit anim cupidatat aliqua. Mollit officia voluptate ut deserunt adipisicing cillum consectetur do irure labore exercitation incididunt est deserunt. Et dolore in aute id adipisicing est eu magna ullamco voluptate tempor occaecat reprehenderit. Incididunt ullamco dolore veniam nostrud. Nisi nostrud sit cillum consectetur amet dolore anim pariatur pariatur exercitation officia ex. Labore magna enim ad esse aliqua ex irure id non in mollit ex. Sit sunt non sit proident nulla. Dolor mollit velit irure ipsum cillum pariatur ipsum incididunt voluptate reprehenderit in magna tempor voluptate. Mollit deserunt aliquip elit magna. Consequat incididunt in ipsum dolor consectetur aliqua dolore minim id enim proident. Labore enim nostrud minim laborum cillum minim minim ut enim.",
        )
      ),
      backgroundColor: Color.fromRGBO(225, 225, 225, 1),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
  
}

class _PaperBackgroundInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        SizedBox(width: 12,),

        CustomCheckBox(
          value: false,
          width: 30,
          height: 30,
          onSelect: (value) => null
        ),

        SizedBox(width: 12,),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Titulo de la tarea", style: TextStyle(color: Color.fromRGBO(101, 101, 101, 1),fontSize: 25, fontWeight: FontWeight.bold), maxLines: 1,),

            LabelList(width: 250,),

          ],

        ),

        Column(
          children: [

            Text("Jul 21, 2021"),
            Transform.rotate(
              child: Icon(Icons.label_important, color: Colors.orange, size: 50,),
              angle: -180 * pi / 360,
            ),

          ],

        ),

        Expanded(child: Container()),

      ],
    );
  }
}

