import 'dart:async';

import 'package:exampp/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroke_text/stroke_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController animation;
  late Animation<double> fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0).animate(animation);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animation.reverse();
        Timer(
          const Duration(seconds: 1),
          () {
            Get.to(() => LoginView());
          },
        );
      } else if (status == AnimationStatus.dismissed) {
        animation.forward();
      }
    });
    animation.forward();
  }

  @override
  Widget build(BuildContext context) {
    // Calculate half screen height
    double halfScreen(int pilihan, {double inputSize = 0}) {
      if (pilihan == 1) {
        return (MediaQuery.of(context).size.height / 2) - inputSize;
      } else if (pilihan == 2) {
        return (MediaQuery.of(context).size.width / 2) - inputSize;
      }
      return 0;
    }

    // Timer(const Duration(seconds: 5), () {
    //   // Get.to(LoginView());
    // });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_orange.png'),
            // image: AssetImage('assets/images/buriza.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: halfScreen(1, inputSize: 135),
              bottom: halfScreen(1, inputSize: 135),
              left: halfScreen(2, inputSize: 135),
              right: halfScreen(2, inputSize: 135)),
          child: Container(
            // color: Colors.blue,
            alignment: Alignment.center,
            child: FadeTransition(
              opacity: fadeInFadeOut,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          StrokeText(
                            text: 'SMP RAHMAT',
                            strokeColor: Colors.black,
                            strokeWidth: 4,
                            textStyle: TextStyle(
                              fontFamily: 'Times New Roman',
                              color: Colors.green,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.5,
                              wordSpacing: 0.5,
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(2, 3),
                                  blurRadius: 0.5,
                                ),
                              ],
                            ),
                          ),
                          StrokeText(
                            text: 'SURABAYA',
                            strokeColor: Colors.black,
                            strokeWidth: 4,
                            textStyle: TextStyle(
                              fontFamily: 'Times New Roman',
                              color: Colors.green,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.5,
                              wordSpacing: 0.5,
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(3, 3),
                                  blurRadius: 1.5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 20,
        color: Colors.orange,
        child: const Center(
          child: Text(
            'Copyright © 2024 IT SMP RAHMAT SURABAYA',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              wordSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
