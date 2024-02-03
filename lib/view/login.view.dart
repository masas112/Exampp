import 'package:exampp/view/widgets/text.form.global.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController tokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.3,
            //   child: Container(
            //     // color: Colors.blue,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                  
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    const Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image(
                              image: AssetImage('assets/images/logo.png'),
                              height: 150,
                              width: 150,
                            ),
                          ),
                          SizedBox(height: 12),
                          Expanded(
                            child: Text(
                              'UNDER CLOUD',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Futura',
                                letterSpacing: 2,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          // const Text(
                          //   'TOKEN',
                          //   style: TextStyle(
                          //     fontSize: 25,
                          //     fontWeight: FontWeight.w900,
                          //     fontFamily: 'futura',
                          //     letterSpacing: 5,
                          //     wordSpacing: 2,
                          //   ),
                          // ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 70, left: 70),
                            child: TextFormGlobal(
                              controller: tokenController,
                              textHint: 'ISI TOKEN',
                              textInputType: TextInputType.text,
                              obsecure: false,
                              
                            ),
                          ),
                          const SizedBox(height: 10),
                          ButtonBar(
                            alignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(100, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(23)),
                                    backgroundColor: Colors.green),
                                child: const Text(
                                  'SUBMIT',
                                  style: TextStyle(
                                    fontFamily: 'Futura',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    letterSpacing: 4,
                                  ),
                                ),
                              ),
                            ],
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
    );
  }
}
