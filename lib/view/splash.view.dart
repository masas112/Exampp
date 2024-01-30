import 'dart:async';

import 'package:exampp/utils/global.colors.dart';
import 'package:exampp/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      // Get.to(LoginView());
    });

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.6, // Ubah faktor sesuai kebutuhan responsif Anda
          heightFactor: 0.6, // Ubah faktor sesuai kebutuhan responsif Anda
          child: SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black,
                // Ganti gambar dengan asset atau jaringan sesuai kebutuhan
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_smp_rahmat.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
