import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:real_stat_app/screens/MainScreen.dart';
import 'package:real_stat_app/screens/SignUpScreen.dart';
import 'package:real_stat_app/widgets/customTextField.dart';
import 'package:real_stat_app/widgets/specialForyou.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController PassController = TextEditingController();
   List<String> location = ['user', 'Agent','super Agent'];
    String dropdownValue = "user";
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            
            child: Column(children: [
              Image.asset("assets/logo.png"),
              Text(
                "Create Account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hinttext: "Email ",
                  icon: Icons.email,
                  controller: emailController,
                  isShow: false),
              CustomTextField(
                hinttext: "Password",
                icon: Icons.lock,
                controller: PassController,
                isShow: true,
                suffix: Icons.visibility_off,
              ),

             
              CustomButton(title: "SignIn", onpressed: (){
                 Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => HomeScreen(),
                         ));
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't Have an Account ? ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                  },
                  child: Text("Sign up",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),))
              ],)
            ]),
          ),
        ),

        
      ],
    ));
  }
}

