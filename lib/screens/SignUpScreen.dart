import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:real_stat_app/widgets/customButton.dart';
import 'package:real_stat_app/widgets/customTextField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController PassController = TextEditingController();
    List<String> location = ['user', 'Agent', 'super Agent'];
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height:MediaQuery.of(context).size.height * 0.070,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButton<String>(
                    hint: Text('Select role '),
                    value: dropdownValue,
                    isExpanded: true,
                    underline: Container(color: Colors.white),
                    icon: const Icon(Icons.arrow_circle_down),
                    iconSize: 24,
                    elevation: 16,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: location.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              CustomButton(
                text: "Sign up",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an Account ? ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },

                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ],
    ));
  }
}

