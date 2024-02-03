import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal({
    Key? key,
    required this.controller,
    required this.textHint,
    required this.textInputType,
    required this.obsecure,
  }) : super(key: key);
  final TextEditingController controller;
  final String textHint;
  final TextInputType textInputType;
  final bool obsecure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
            )
          ]),
      child: TextFormField(
        style: const TextStyle(
          fontFamily: 'Times New Roman',
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.5,
          wordSpacing: 0.5,
        ),
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: textInputType,
        obscureText: obsecure,
        decoration: InputDecoration(
          hintText: textHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Colors.white),
          ),
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(
            height: 1,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
