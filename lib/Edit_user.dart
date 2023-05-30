import 'package:flutter/material.dart';
import 'package:task/Show_all_user.dart';
class Edit_user extends StatelessWidget {
  const Edit_user({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(182, 234, 250, 1),Colors.grey
              ]
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 39.0),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter the user name",
                      hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter the user email",
                      hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter the  password of  app",
                      hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter the  role of user",
                      hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter the  team of user",
                      hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter the  id of user",
                      hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: FloatingActionButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Show_users()));
                  },child: Icon(Icons.add),),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
