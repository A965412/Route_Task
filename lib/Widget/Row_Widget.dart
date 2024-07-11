import 'package:flutter/material.dart';
import 'package:routetask/Widget/Search_Widget.dart';

class Row_Widget extends StatelessWidget {
  const Row_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Search_Widget(),
        SizedBox(
          width: 22,
        ),
        ImageIcon(
          size: 30,
          AssetImage("assets/images/cart_icon.png"),
          color: Color.fromARGB(255, 15, 46, 109),
        ),
      ],
    );
  }
}
