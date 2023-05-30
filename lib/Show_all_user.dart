import 'package:flutter/material.dart';
import 'package:task/Add_user.dart';
import 'package:task/Edit_user.dart';
class Show_users extends StatelessWidget {
  const Show_users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [
        Color.fromRGBO(182, 234, 250, 1),Colors.grey
    ]
    ),
    ),
     child: Padding(
       padding: const EdgeInsets.only(top: 38.0),
       child: Column(
         children: [

           Row(
             children: [
               Text("User_name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
               SizedBox(width: 180,),
               IconButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Edit_user()));
               }, icon: Icon(Icons.edit))
             ],
           ),
           Padding(
             padding: const EdgeInsets.only(top: 480.0,left: 300),
             child: FloatingActionButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Add_User()));
             },child: Icon(Icons.add),),
           )
         ],
       ),
     ),
      ),
    );
  }
}
