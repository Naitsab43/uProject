import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 80,
      child: FittedBox(
        child: FloatingActionButton(
          elevation: 5,
          child: Icon(Icons.add, size: 38,),
          backgroundColor: Color.fromRGBO(59, 74, 126, 1),
          onPressed: (){},
        ),
      ),
    );
  }

  
}
