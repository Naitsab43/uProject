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
      floatingActionButton: CustomFloatingButton(color: Colors.red[800]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _ListOfNotes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          height: 90,
          color: Colors.red,
        );
      },
    ),
    onTap: () => {
      Navigator.pushNamed(context, "task")
    },
    );
  }
}


