import 'dart:async';

import 'package:exampp/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

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

    Timer(const Duration(seconds: 5), () {
      // Get.to(LoginView());
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: halfScreen(1, inputSize: 100),
              bottom: halfScreen(1, inputSize: 100),
              left: halfScreen(2, inputSize: 100),
              right: halfScreen(2, inputSize: 100)),
          child: Container(
            // color: Colors.blue,
            alignment: Alignment.center,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                SizedBox(height: 7),
                Expanded(
                  child: Text(
                    'SMP RAHMAT\nSURABAYA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.5,
                      wordSpacing: 0.5,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 0.5,
                        ),
                        Shadow(
                          color: Colors.black,
                          offset: Offset(3, 3),
                          blurRadius: 0.5,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
