import 'package:flutter/material.dart';


class PaperBackground extends StatelessWidget {

  final double height;
  final String text;
  final Widget info;
  final bool hasTopBar;

  PaperBackground({
    required this.height,
    required this.info,
    required this.text,
    required this.hasTopBar
  });


  @override
  Widget build(BuildContext context) {

    return Container(
      height: this.height,
      width: double.infinity,
      decoration: _createDecoration(),
      child: SingleChildScrollView( 
        child: Column(
          children: [
              
            hasTopBar ? 
            Container(
              width: double.infinity,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
              ),
            ) 
            : 
            Container(),
              

            _PaperInfo(child: this.info,),
            Divider(color: Colors.black,),
            _PaperBody(text: this.text)
              
          ],
        ),
      ),
    );
  

  }

  BoxDecoration _createDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: Colors.black38,
          offset: Offset(0,5)
        )
      ]
    );
  }
  
}

class _PaperInfo extends StatelessWidget {

  final Widget child;

  _PaperInfo({ 
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: this.child
    );
  }
}

class _PaperBody extends StatelessWidget {

  final String text;

  const _PaperBody({ required this.text });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Text(this.text, style: TextStyle(fontSize: 16,  color: Color.fromRGBO(80, 80, 80, 1)),),
      width: double.infinity,
    );
  } 
}

