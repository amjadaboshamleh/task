import 'package:flutter/material.dart';
import 'package:task/Admin%20Add%20Team.dart';
import 'package:task/show_specific_team.dart';
class Show_teams extends StatelessWidget {
  const Show_teams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.redAccent,
      title: Text("All Teams",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      centerTitle: true,
    ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin:  Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromRGBO(182, 234, 250, 1),Colors.grey]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowSpecificTeam()));
                  },child: Text("Team Name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),
                  SizedBox(width: 188,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 550.0,left: 250),
                child: FloatingActionButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddTeam()));
                },child: Icon(Icons.add),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
