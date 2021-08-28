import 'dart:ui';

import 'package:flutter/material.dart';

class ProgressBarPreview extends StatelessWidget {
  
  final double height;

  ProgressBarPreview({required this.height}); 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromRGBO(221, 221, 221, 1),
          ),
          height: this.height,
          width: double.infinity,
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Theme.of(context).primaryColor,
          ),
          height: this.height,
          width: 200 * 0.5,
        ),

        Container(
          alignment: Alignment.center,
          height: this.height,
          child: Text("50%", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        )

      ]
    );
  }
}


class ProgressBar extends StatelessWidget {

  final double height;

  ProgressBar({required this.height}); 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("50%", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30)),
        Stack(
          children: [

            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(221, 221, 221, 1),
              ),
              height: this.height,
              width: 320,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).primaryColor,
              ),
              height: this.height,
              width: 320 * 0.5,
            ),


          ]
        ),
      ],
    );
  }
}
