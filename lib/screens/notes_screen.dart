import 'package:flutter/material.dart';

import 'package:notas_app/widgets/custom_fab.dart';
import 'package:notas_app/widgets/custom_navbar.dart';


class NotesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notas del proyecto"),
        backgroundColor: Colors.red,
        actions: [],
      ),
      body: _ListOfNotes(),
      backgroundColor: Color.fromRGBO(225, 225, 225, 1),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: CustomFloatingButton(color: Colors.red[900]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _ListOfNotes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return _NotesItem();
      },
    );

  }
}

class _NotesItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: 100,
        height: 80,
        decoration: _createDecoration(),
        child: Row(
          children: [

            Container(
              width: 12,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                color: Colors.purpleAccent,
              ),
            ),

            SizedBox(width: 12,),

            Text("Titulo de la nota", style: TextStyle(color: Color.fromRGBO(101, 101, 101, 1),fontSize: 25, fontWeight: FontWeight.bold), maxLines: 1,),

            Expanded(child: Container()),

            Text("Jul 21, 2021", style: TextStyle(color: Color.fromRGBO(101, 101, 101, 1))),

            SizedBox(width: 10,)

          ],
        )
      ),
      onTap: () => {
        Navigator.pushNamed(context, "note")
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

