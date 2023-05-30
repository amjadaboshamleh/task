import 'package:flutter/material.dart';
import 'package:task/AdminTask.dart';
class AdminAddTask extends StatelessWidget {
  const AdminAddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Edit task",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(182, 234, 250, 1),Colors.grey,
                ]
            )
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter The Title",
                    hintStyle: TextStyle(fontSize: 25),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 25),
                    prefixIcon: Icon(Icons.edit),
                    hintText: "Enter The Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 25),
                    prefixIcon: Icon(Icons.edit),
                    hintText: "Enter The Start Date",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(

                autofocus: true,
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 25),
                    prefixIcon: Icon(Icons.edit),
                    hintText: "Enter The End Date",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    )
                ),
              ),
              // SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowAdminTask()));
                }, child: Text("Save Channges",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),)),
              )


            ],),
        ),),
    );
  }
}
