import 'package:flutter/material.dart';
import 'package:notas_app/widgets/shared/progress_bar.dart';


class ProjectDescriptionCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        child: Column(
          children: [

            SizedBox(height: 10,),
            ProgressBar(height: 25),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                _DescriptionBody(),
                SizedBox(width: 10,),
                _RemainingDays()

              ],
            )

          ],
        ),
        width: double.infinity,
        height: 250,
        decoration: _createCardDecoration(),
      ),
    );
  }

  BoxDecoration _createCardDecoration() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
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


class _RemainingDays extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          height: 95,
          width: 110,
          child: Icon(Icons.access_alarm, color: Colors.white, size: 50,),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 110,
          height: 95,
          child: Text("10", style: TextStyle( color: Color.fromRGBO(101, 101, 101, 1),fontSize: 46, fontWeight: FontWeight.bold),),
          decoration: BoxDecoration(
            color: Color.fromRGBO(224, 224, 224, 1),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
          )
        ),

      ],
    );
  }
}

class _DescriptionBody extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          height: 110,
          width: 265,
          decoration:  BoxDecoration(
            color: Color.fromRGBO(224, 224, 224, 1),
            borderRadius: BorderRadius.circular(10)
          )

        ),

        SizedBox(height: 5,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              height: 50,
              width: 110,
              decoration: BoxDecoration(
                color: Color.fromRGBO(198, 198, 198, 1),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color.fromRGBO(141, 141, 141, 1), width: 2)
              ),
            ),
            Icon(Icons.arrow_forward, color: Color.fromRGBO(101, 101, 101, 1), size: 38,),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(198, 198, 198, 1),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color.fromRGBO(141, 141, 141, 1), width: 2)
              ),
              margin: EdgeInsets.symmetric(horizontal: 3),
              height: 50,
              width: 110,
            ),

          ],
        ),


      ],

    );
  }
}