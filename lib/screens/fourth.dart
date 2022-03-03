import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtn/screens/fifth.dart';
import 'package:get/get.dart';
import 'package:vtn/constants.dart';
import 'package:vtn/screens/third.dart';

class FourthScreen extends StatelessWidget {
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
                  Spacer(flex: 2), //2/6
                  Text("hi nitin jain this side",
                      style: Theme.of(context).textTheme.headline4),
                  Spacer(), // 1/6

                  Spacer(), // 1/6
                  
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
                Get.to(ThirdScreen());
              },
            ),
            IconButton(
              onPressed: () {
                Get.to((FifthScreen()));
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
