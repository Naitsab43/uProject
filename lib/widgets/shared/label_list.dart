import 'package:flutter/material.dart';

class LabelList extends StatelessWidget {

  final double width;

  LabelList({
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int i) => _LabelItem()
      ),
    );
  }
}

class _LabelItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text("Programación", style: TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold)),
      ),
    );
  }
}