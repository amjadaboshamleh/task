import 'package:flutter/material.dart';
class SpecificTaskDetails extends StatelessWidget {
  const SpecificTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(" Show  Specific   Task ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
          body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [
        Color.fromRGBO(182, 234, 250, 1),Colors.grey,
        ]
        )
        ),
         child: Column(

           children: [
             SizedBox(height: 40,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(" task Details",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),

               ],
             )
           ],
         ),
          ),
    );
  }
}
