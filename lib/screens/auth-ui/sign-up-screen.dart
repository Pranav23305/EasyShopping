import 'package:e_commerce/screens/auth-ui/sign-in-screen.dart';
import 'package:e_commerce/utils/app-constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appSecondaryColor,
          centerTitle: true,
          title: const Text(
            "Sign Up",
            style: TextStyle(
              color: AppConstant.appTextColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 20,
              ),
              Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Welcome to my App",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppConstant.appSecondaryColor,
                    ),
                  )),
              SizedBox(
                height: Get.height / 20,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        cursorColor: AppConstant.appSecondaryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            hintText: "Enter Your Email Address",
                            prefixIcon: const Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        cursorColor: AppConstant.appSecondaryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            hintText: "Enter Username",
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        cursorColor: AppConstant.appSecondaryColor,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            hintText: "Enter Your Phone Number",
                            prefixIcon: const Icon(Icons.phone),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        cursorColor: AppConstant.appSecondaryColor,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            hintText: "Enter Your City",
                            prefixIcon: const Icon(Icons.location_city),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        obscureText: isPasswordHidden,
                        cursorColor: AppConstant.appSecondaryColor,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 2.0, left: 8.0),
                            hintText: "Enter Your Password",
                            prefixIcon: const Icon(Icons.password),
                            suffixIcon: IconButton(
                              icon: Icon(
                                isPasswordHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  isPasswordHidden = !isPasswordHidden;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                  )),
              SizedBox(
                height: Get.height / 20,
              ),
              Material(
                child: Container(
                  width: Get.width / 2,
                  height: Get.height / 18,
                  decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: AppConstant.appTextColor,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: AppConstant.appSecondaryColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.offAll(() => const SignInScreen()),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          color: AppConstant.appSecondaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
