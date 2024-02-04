import 'dart:async';

import 'package:flutter/material.dart';

class TestAnimation extends StatefulWidget {
  const TestAnimation({super.key});

  @override
  State<TestAnimation> createState() => _TestAnimationState();
}

class _TestAnimationState extends State<TestAnimation>
    with TickerProviderStateMixin {
  late bool selected = true;
  late double tester = 2.0;
  late bool selectedlogoScale = true;

  late AnimationController animation;
  late Animation<double> fadeInFadeOut;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 200), () {
      setState(() {
        tester = tester == 2.0 ? 1.0 : 2.0;
      });
      Timer(const Duration(seconds: 1), () {
        setState(() {
          selectedlogoScale = false;
          Timer(const Duration(seconds: 1), () {
            setState(() {
              selected = false;
              animation.forward();
            });
          });
        });
      });
    });

    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1750),
    );

    fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0).animate(animation);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          // width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: AnimatedPositioned(
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            height: MediaQuery.of(context).size.height,
            top: selectedlogoScale ? 1000 :  100,
            left: 50,
            child: SizedBox(
              height: 250,
              width: 250,
              child: AnimatedScale(
                scale: tester,
                duration: const Duration(milliseconds: 1000),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      child: Container(
                        color: Colors.pink,
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      width: 150,
                      height: 150,
                      top: selected ? 50 : 0,
                      left: 50,
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              selected = !selected;
                            },
                          );
                          if (selected == true) {
                            animation.reverse();
                          } else {
                            animation.forward();
                          }
                        },
                        child: const Image(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      width: 200,
                      height: 200,
                      bottom: selected ? -65 : -75,
                      left: 50,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = !selected;
                            animation.forward();
                          });
                          if (selected == true) {
                            animation.reverse();
                          } else {
                            animation.forward();
                          }
                        },
                        child: FadeTransition(
                          opacity: fadeInFadeOut,
                          child: Text(
                            'UNDER CLOUD',
                            style: TextStyle(
                              color: selected ? Colors.white : Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
