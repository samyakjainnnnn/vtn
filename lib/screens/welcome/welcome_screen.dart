import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtn/screens/front/home.dart';
import 'package:vtn/screentwo/mapping.dart';
import 'package:get/get.dart';
import 'package:vtn/constants.dart';
import 'package:vtn/screens/first.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, color: Colors.pink),
          onPressed: () => Get.to(HomePage()),
        ),
      ),
      body: Stack(
        children: [

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 5), //2/6
                  Text("Welcome to vtn,",
                      style: Theme.of(context).textTheme.headline4,   
),
                  const Text("Enter your name below"),
                  Spacer(), // 1/6
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Spacer(flex: 1,), // 1/6
                  InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text("Explore",
                          style: Theme.of(context).textTheme.button),
                    ),
                  ),
                  Spacer(flex:1), // it will take 2/6 spaces
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
