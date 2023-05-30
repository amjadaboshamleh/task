import 'package:flutter/material.dart';
import 'package:task/Admin_dashboard.dart';
class Admin_register extends StatefulWidget {
  const Admin_register({Key? key}) : super(key: key);

  @override
  State<Admin_register> createState() => _Admin_registerState();
}

class _Admin_registerState extends State<Admin_register> {
  @override
  var admin_key=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin:  Alignment.topCenter,
                  end: Alignment.bottomCenter,
                colors: [Color.fromRGBO(182, 234, 250, 1),Colors.grey]
              )
            ),
            child: Form(
              key: admin_key,
              child: SingleChildScrollView(
                child: Column(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 70),
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Enter Your Email",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(27))
                      ),
                      validator: (value) {
                        if(value!.isEmpty&&!value.contains('@'))
                        {
                          return "Either Your Email empty or donsen't contain @ ";
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Your Name",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(27))
                      ),
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Your Name shouldn't be empty ";
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter your password ",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(27))
                      ),
                      validator: (value) {
                        if(value!.isEmpty&&value.length<6)
                        {
                          return " Either your password empty or less than 6 characters  ";
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Your Phone Number",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(27))
                      ),
                      validator: (value) {
                        if(value!.isEmpty&&value.length<10)
                        {
                          return " Either your phone number  empty or less than 10 numbers  ";
                        }
                      },
                    ),
                    SizedBox(height: 40,),
                    ElevatedButton(onPressed: (){
                      if(admin_key.currentState!.validate()){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Admin_dash_board()));
                      }
                    }, child: Text("Sign up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),))

                  ],
                ),
              ),
            ),
          ),
          // SizedBox(height: 70,),
          // TextFormField(
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width)
          //     )
          //   ),
          // ),


    );
  }
}
