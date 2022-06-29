// @dart=2.12
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:zyaaad_task1/reusable_component/button.dart';

import 'Login.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
                const Text('Register',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: height / 45,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(color: Colors.black),
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xFFFF7643),
                    ),
                  ),
                ),
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
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Color(0xFFFF7643),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 45,
                ),
                Button(
                  text: "Register",
                  press: () {},
                ),
                SizedBox(
                  height: height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("has any an account? "),
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
                          "Sign in here",
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
                  "By registering your account, you agree to our",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Text(
                  "terms and conditions",
                  style: TextStyle(color: Color(0xFFFF7643)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
