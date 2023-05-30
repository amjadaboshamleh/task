import 'package:flutter/material.dart';
import 'package:task/show_teams.dart';
class AddTeam extends StatelessWidget {
  const AddTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.redAccent,
      title: Text("Add Team",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
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
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter The Name Of Team",
                    hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                  ),
                ),
                SizedBox(height: 50,),
                Image.asset('images/OIP.jpeg'),
                SizedBox(height: 40,),
                FloatingActionButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Show_teams()));
                },child: Text("Add",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
