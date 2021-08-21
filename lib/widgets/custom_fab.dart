import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {

  final Color? color;

  CustomFloatingButton({
    this.color
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 70,
      child: FittedBox(
        child: FloatingActionButton(
          elevation: 5,
          child: Icon(Icons.add, size: 30,),
          backgroundColor: this.color ?? Color.fromRGBO(59, 74, 126, 1),
          onPressed: (){},
        ),
      ),
    );
  }

  
}
