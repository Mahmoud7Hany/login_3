// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // ignore: non_constant_identifier_names
  var formkey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.home),
            backgroundColor: Colors.purple[400],
          ),
          body: SafeArea(
            child: Scaffold(
              body: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Form(
                          key: formkey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              Text(
                                "Log in",
                                style: TextStyle(
                                    fontSize: 33, fontFamily: "myfont"),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              SvgPicture.asset(
                                "assets/icons/login.svg",
                                width: 288,
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.purple[100],
                                  borderRadius: BorderRadius.circular(66),
                                ),
                                width: 266,
                                height: 50,
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: TextFormField(
                                  validator: (value) {
                                    value!.isEmpty
                                        ? 'emali addres must not be empty'
                                        : null;
                                  },
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.person,
                                        color: Colors.purple[800],
                                      ),
                                      hintText: "Your Email :",
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 23,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.purple[100],
                                  borderRadius: BorderRadius.circular(66),
                                ),
                                width: 266,
                                height: 50,
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: TextFormField(
                                  validator: (value) {
                                    value!.isEmpty
                                        ? 'password must not be empty'
                                        : null;
                                  },
                                  obscureText: isPassword,
                                  decoration: InputDecoration(
                                      suffix: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isPassword = !isPassword;
                                          });
                                        },
                                        icon: Icon(
                                          isPassword
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.purple[900],
                                        ),
                                        padding: EdgeInsets.only(top: 6),
                                      ),
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.purple[800],
                                        size: 19,
                                      ),
                                      hintText: "Password :",
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              ElevatedButton(
                               onPressed: () {
                                  if (formkey.currentState!.validate()) {
                                    print("hi");
                                  }
                                },
                                child: Text(
                                  "login",
                                  style: TextStyle(fontSize: 24),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.purple),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          horizontal: 106, vertical: 10)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(27))),
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an accout? "),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, "/signup");
                                      },
                                      child: Text(
                                        " Sign up",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Image.asset(
                          "assets/images/main_top.png",
                          width: 111,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
