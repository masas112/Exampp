import 'package:flutter/material.dart';

class CopyrightGlobal extends StatelessWidget {
  const CopyrightGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.copyright), label: "Copyright"),
      ],
    );
  }
}
