import 'package:flutter/material.dart';
import 'package:notas_app/widgets/shared/progress_bar.dart';
import 'package:notas_app/widgets/shared/select_date.dart';


class ProjectDescriptionCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        
        child: Column(
          children: [

            SizedBox(height: 10,),
            
            ProgressBar(height: 25, width: 270,),

            SizedBox(height: 5,),
        
            _DescriptionBody(),
         
          ],
        ),
        width: double.infinity,
        height: 240,
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
          height: 60,
          width: 80,
          child: Icon(Icons.access_alarm, color: Colors.white, size: 40,),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 80,
          height: 60,
          child: Text("10", style: TextStyle( color: Color.fromRGBO(101, 101, 101, 1),fontSize: 35, fontWeight: FontWeight.bold),),
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

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
          width: size.width - 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        
              Container(
                height: 120,
                width: 240,
                decoration:  BoxDecoration(
                  color: Color.fromRGBO(224, 224, 224, 1),
                  borderRadius: BorderRadius.circular(10)
                )
        
              ),
        
              SizedBox(width: 8,),
        
              _RemainingDays(),
        
            ],
        
          ),
        ),

        SizedBox(height: 5,),

        SelectDate(width: 145, height: 50,)


      ],

    );
  }
}