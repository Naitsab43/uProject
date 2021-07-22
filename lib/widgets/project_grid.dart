import 'package:flutter/material.dart';

class ProjectGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int i) => _ProjectCard()
    );
  }
}

class _ProjectCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _createBoxDecoration(),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      height: 80,
      child: Row(
        children: [
          
          SizedBox(width: 15,),
          Text("Title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
          Expanded(child: Container()),
          Text("Importancia"),
          SizedBox(width: 15,),

        ],
      )
    );
  }

  BoxDecoration _createBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.red,
    );
  }
  
}

