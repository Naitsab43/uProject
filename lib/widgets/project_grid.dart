import 'package:flutter/material.dart';
import 'package:notas_app/widgets/progress_bar.dart';

class ProjectGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 18
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int i){
          return _ProjectCard();
        },
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Stack(
        children: [
    
          _CardContent(),
    
          /// Barra de arriba
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
            width: double.infinity,
            height: 13,
          ),
      
        ]
      ),
      onTap: () => Navigator.pushNamed(context, "project"),
    );
  }

}

class _CardContent extends StatelessWidget {

  final titleStyle = TextStyle(color: Color.fromRGBO(101, 101, 101, 1), fontWeight: FontWeight.bold, fontSize: 20);

  @override
  Widget build(BuildContext context) {

    return Positioned(
      child: Container(
        margin: EdgeInsets.only(top: 15),
        decoration: _createBoxDecoration(),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Titulo del proyecto", style: titleStyle, maxLines: 1,),

            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(224, 224, 224, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              width: double.infinity,
              height: 70,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Icon(Icons.calendar_today_rounded, color: Color.fromRGBO(101, 101, 101, 1)),
                _SelectDate(),
                Icon(Icons.arrow_forward, color: Color.fromRGBO(101, 101, 101, 1)),
                _SelectDate(),

              ],
            ),
            SizedBox(height: 10,),

            ProgressBarPreview(height: 25,)
            
          ],
        ),
      ),
    );

  }

  BoxDecoration _createBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      color: Colors.white,
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

class _SelectDate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(198, 198, 198, 1),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color.fromRGBO(141, 141, 141, 1))
      ),
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 30,
      width: 60,
    );
  }
}

