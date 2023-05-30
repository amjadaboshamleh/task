import 'package:flutter/material.dart';
import 'package:task/AdminTask.dart';
import 'package:task/Show_all_user.dart';
import 'package:task/show_teams.dart';
class Admin_dash_board extends StatelessWidget {
  const Admin_dash_board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(182, 234, 250, 1),Colors.grey
            ]
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Image.asset('images/aa.jpeg'),
              SizedBox(height: 130,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ElevatedButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowAdminTask()));
                    }, child: Text('Tasks',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),
                  ),
                  ElevatedButton(onPressed: (){}, child: Text("Gant",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),))
            ],
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Show_teams()));
                  }, child: Text('Teams',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Show_users()));
                }, child: Text("Users",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),))
              ],),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Text("Your Dash_Board",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              ),

        ],
      ),
    ),
    ),
    );
  }
}
