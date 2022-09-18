// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isPassword = true;
  var formkey = GlobalKey<FormState>();
// GlobalKey<FormState> formkey <FormState>();
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
                                height: 20,
                              ),
                              Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: "myfont",
                                    color: Colors.grey[800]),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              SvgPicture.asset(
                                "assets/icons/signup.svg",
                                height: 222,
                              ),
                              SizedBox(
                                height: 27,
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
                                  // ignore: body_might_complete_normally_nullable
                                  validator: ((value) {
                                    value!.isEmpty
                                        ? 'emali addres must not be empty'
                                        : null;
                                  }),
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
                                  // ignore: body_might_complete_normally_nullable
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
                                  "Sign up",
                                  style: TextStyle(fontSize: 24),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.purple),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          horizontal: 89, vertical: 10)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(27))),
                                ),
                              ),
                              SizedBox(
                                height: 33,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Already have an accout? "),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/login");
                                    },
                                    child: Text(
                                      " Log in",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              SizedBox(
                                width: 299,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Divider(
                                      thickness: 0.6,
                                      color: Colors.purple[900],
                                    )),
                                    Text(
                                      "OR",
                                      style: TextStyle(
                                        color: Colors.purple[900],
                                      ),
                                    ),
                                    Expanded(
                                        child: Divider(
                                      thickness: 0.6,
                                      color: Colors.purple[900],
                                    )),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 27),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.all(13),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.purple,
                                                width: 1)),
                                        child: SvgPicture.asset(
                                          "assets/icons/facebook.svg",
                                          color: Colors.purple[400],
                                          height: 27,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 22,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.all(13),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.purple,
                                                width: 1)),
                                        child: SvgPicture.asset(
                                          "assets/icons/google-plus.svg",
                                          color: Colors.purple[400],
                                          height: 27,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 22,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.all(13),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.purple,
                                                width: 1)),
                                        child: SvgPicture.asset(
                                          "assets/icons/twitter.svg",
                                          color: Colors.purple[400],
                                          height: 27,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
