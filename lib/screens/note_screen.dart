import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notas_app/widgets/shared/custom_navbar.dart';
import 'package:notas_app/widgets/shared/paper_background.dart';


class NoteScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actions: [

          IconButton(
            icon: Icon(FontAwesomeIcons.edit),
            onPressed: (){},
          ),

        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: PaperBackground(
          hasTopBar: true,
          height: 650,
          info: _PaperBackgroundInfo(),
          text: "",
        ),
      ),
      backgroundColor: Color.fromRGBO(225, 225, 225, 1),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _PaperBackgroundInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [

             SizedBox(width: 20,),

            Text("Titulo de la nota", style: TextStyle(color: Color.fromRGBO(101, 101, 101, 1),fontSize: 25, fontWeight: FontWeight.bold), maxLines: 1,),

            Expanded(child: Container()),

            Text("Jul 21, 2021", style: TextStyle(color: Color.fromRGBO(101, 101, 101, 1))),

            SizedBox(width: 10,)



          ],
        )

      ],
    );
  }
}