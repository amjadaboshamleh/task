import 'package:flutter/material.dart';
class ShowSpecificTeam extends StatelessWidget {
  const ShowSpecificTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Team Name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
      body:  Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin:  Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color.fromRGBO(182, 234, 250, 1),Colors.grey]
    )
    ),
      child: Text("Name && member or leader",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),

      ),
    );
  }
}
