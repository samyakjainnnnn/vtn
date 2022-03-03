import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vtn/screens/welcome/welcome_screen.dart';
import 'package:lottie/lottie.dart';

import '../constants.dart';
import 'second.dart';


class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(

        children: [

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("hi samyak jain this side",
                      style: Theme.of(context).textTheme.headline4),
                  Spacer(flex: 2), // 1/6

                                                        LottieBuilder.asset("assets/icons/ani.json",fit: BoxFit.fitHeight,),

                  Spacer(flex: 2), // it will take 2/6 spaces
                  
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                CupertinoIcons.arrow_left,
                color: Colors.white,
              ),
              onPressed: () {
                Get.to(WelcomeScreen());
              },
            ),
            IconButton(
              onPressed: () {
                Get.to((SecondScreen()));
              },
              icon: const Icon(
                CupertinoIcons.arrow_right,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
