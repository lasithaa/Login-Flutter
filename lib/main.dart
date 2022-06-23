import 'package:flutter/material.dart';
import 'package:untitled69/login.dart';

import 'SignupPage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              crossAxisAlignment: CrossAxisAlignment.center,


              children: [
                Text("Welcome",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 15,
                ),
                Text("Automatic identity which enable you to verify your identity",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,



                ),),
                SizedBox(
                  height: 20,

                ),
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/welcome2.png')
                    )
                  ),
                ),
                Column(
                  children: [
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text("Login",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3,left: 3),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        )
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                        },
                          elevation: 0,
                        child: Text("Sign Up",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),)

                      ),
                    )
                  ],
                )
              ],
            ),


          ),
        ),

      );

  }
}

