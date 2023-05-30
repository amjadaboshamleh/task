import 'package:flutter/material.dart';
import 'package:task/Admin_add_task.dart';
import 'package:task/edit_task.dart';
import 'package:task/specific_task_details.dart';
class ShowAdminTask extends StatelessWidget {
  const ShowAdminTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.redAccent,
      title: Text("All Tasks",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      centerTitle: true,
    ),
    body: Container(
      height: double.infinity,
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
            SizedBox(height: 14,),
            Row(
              children: [
                GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SpecificTaskDetails()));
                },child: Text('Name of the task ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),
                SizedBox(width: 140,),
                IconButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminEditTask()));
                }, icon:Icon(Icons.edit)),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550.0,left: 320),
              child: FloatingActionButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminAddTask()));
              },child: Icon(Icons.add),),
            )
          ],
        ),
      ),
    ),
    );
  }
}
