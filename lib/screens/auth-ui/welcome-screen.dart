import 'dart:html';

import 'package:e_commerce/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appSecondaryColor,
        title: Text(
          "Welcome To My App",
          style: TextStyle(
            color: AppConstant.appTextColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                child: Lottie.asset(
                  "assets/images/icon.json",
                  height: 200,
                  width: 200,
                )),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: const Text(
                "Happy Shopping",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: Get.width / 1.2,
                height: Get.height / 12,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/logo.png",
                      width: Get.width / 14,
                      height: Get.height / 14,
                    ),
                    label: const Text(
                      "Sign in with Google",
                      style: TextStyle(
                        color: AppConstant.appTextColor,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            Material(
              child: Container(
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: Get.width / 1.2,
                height: Get.height / 12,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.email,
                      color: AppConstant.appTextColor,
                    ),
                    label: const Text(
                      "Sign in with Email",
                      style: TextStyle(
                        color: AppConstant.appTextColor,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
