import 'package:flutter/material.dart';


class SelectDate extends StatelessWidget {

  final double width; 
  final double height;

  SelectDate({
    required this.width, 
    required this.height
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(198, 198, 198, 1),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color.fromRGBO(141, 141, 141, 1))
            ),
            margin: EdgeInsets.symmetric(horizontal: 3),
            height: this.height,
            width: this.width,
          ),
          Icon(Icons.arrow_forward, color: Color.fromRGBO(101, 101, 101, 1), size: this.width * 0.25,),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(198, 198, 198, 1),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color.fromRGBO(141, 141, 141, 1))
            ),
            margin: EdgeInsets.symmetric(horizontal: 3),
            height: this.height,
            width: this.width,
          )

        ],
      ),
    );

  }
}
