import 'package:exampp/view/home.view.dart';
import 'package:exampp/view/splash.view.dart';
import 'package:exampp/view/testerAnimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => ResponsiveSizer(
        builder: (context, orientation, screenType) => const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: TestAnimation(),
        ),
      );
}
