import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,size: 20,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Text("SignUp",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 20,),
                      Text("create an account it's free",style: TextStyle(fontSize: 15,color: Colors.grey),)
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    makeInput(label: "Email"),
                    makeInput(label: "Password",obscureText: true),
                    makeInput(label: "Confirm Password",obscureText: true),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 40),),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 40),

                child: MaterialButton(

                  minWidth: double.infinity,
                  height: 60,
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: (){},
                  elevation: 0,
                  child: Text("SignUp",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  ),


                ),


              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  Text("Login",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),)
                ],
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height/3,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/welcome2.png'),
              //       fit: BoxFit.cover,
              //     )
              //   ),
              // )

            ],
          ),


        ),
      ),

    );

  }
}

Widget makeInput({label,obscureText=false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            )
        ),
      ),
      SizedBox(height: 30,)
    ],
  );
}
