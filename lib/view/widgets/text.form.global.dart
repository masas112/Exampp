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
      padding: const EdgeInsets.only(top: 3, left: 15),
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
        controller: controller,
        keyboardType: textInputType,
        obscureText: obsecure,
        decoration: InputDecoration(
          hintText: textHint,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
          hintStyle: const TextStyle(
            height: 1,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
