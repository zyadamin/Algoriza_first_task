// @dart=2.12
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:zyaaad_task1/reusable_component/button.dart';

import 'Register.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var message = "";
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height; //737.4545454545455
    width = size.width; //392.72727272727275

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bar.jpg'),
                  fit: BoxFit.fill)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('welcome to fashion daily',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: height / 30,
                ),
                const Text('Sign In',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: height / 45,
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(color: Colors.black),
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color(0xFFFF7643),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 45,
                ),
                Button(
                  text: "Sign In",
                  press: () {},
                ),
                SizedBox(
                  height: height / 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Doesn't has any an account? "),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: const Text(
                          "Register here",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFF7643)),
                        )),
                  ],
                ),
                SizedBox(
                  height: height / 10,
                ),
                Text(
                  "Use application according to policy rules,",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: height / 80,
                ),
                Text(
                  "any kind of violations will be subject to sactions",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
