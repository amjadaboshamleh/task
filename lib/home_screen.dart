// import 'package:flutter/material.dart';
// s
import 'package:flutter/material.dart';
import 'package:task/admin_register.dart';
class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/Welcome.png'),
              Padding(
                padding: const EdgeInsets.all(20.0),
               child: Text("Welcome",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w500),),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 82.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Admin_register()));
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  width: MediaQuery.of(context).size.width,
                 child: Center(child: Text('Sign In As Admin',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Text("OR",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            ),
           GestureDetector(
             onTap: (){},
             child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Colors.amber
              ),
              width: MediaQuery.of(context).size.width,
              child: Center(child: Text('Login Dear Employee',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),
          ),
           ),
          ],
      ),
        ),

          // ),
          //   SizedBox(height: 40,),
          //   Padding(
          //     padding: const EdgeInsets.all(48.0),
          //     child: ElevatedButton(
          //         onPressed: (){}, child: Text("Sign In AS Admin",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),
          //   ),
          //  // SizedBox(height: 50,),
          //   //Text("OR",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          //  // SizedBox(height: 100,),
          //   ElevatedButton(onPressed: (){}, child: Text("Employee Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),))



        ),

    );
  }
}
