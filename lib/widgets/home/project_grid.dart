import 'package:flutter/material.dart';
import 'package:notas_app/widgets/shared/progress_bar.dart';
import 'package:notas_app/widgets/shared/select_date.dart';

class ProjectGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 18,
        ),
        itemCount: 2,
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
              color: Theme.of(context).primaryColor,
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

  final titleStyle = TextStyle(color: Color.fromRGBO(101, 101, 101, 1), fontWeight: FontWeight.bold, fontSize: 18);

  @override
  Widget build(BuildContext context) {

    return Positioned(
      child: Container(
        margin: EdgeInsets.only(top: 13),
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
              height: 50,
            ),

            SelectDate(width: 60, height: 30,),
            
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

