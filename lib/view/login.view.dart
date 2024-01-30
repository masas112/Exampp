import 'package:exampp/utils/global.colors.dart';
import 'package:exampp/view/widgets/button.global.dart';
import 'package:exampp/view/widgets/social.login.dart';
import 'package:exampp/view/widgets/text.form.global.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // color: Colors.green,
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Logo',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Login to your account',
                style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormGlobal(
                  controller: emailController,
                  textHint: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obsecure: false),
              const SizedBox(
                height: 10,
              ),
              TextFormGlobal(
                  controller: passwordController,
                  textHint: 'Password',
                  textInputType: TextInputType.visiblePassword,
                  obsecure: true),
              const SizedBox(
                height: 20,
              ),
              ButtonGlobal(
                inputText:
                    (emailController.text + ' ' + passwordController.text),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialLogin(),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
            ),
            InkWell(
              onTap: null,
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
