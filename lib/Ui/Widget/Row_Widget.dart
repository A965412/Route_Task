import 'package:flutter/material.dart';
import 'package:routetask/Ui/Widget/Search_Widget.dart';

class Row_Widget extends StatelessWidget {
  const Row_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Search_Widget(),
        SizedBox(
          width: 15,
        ),
        ImageIcon(
          size: 25,
          AssetImage("assets/images/cart_icon.png"),
          color: Colors.white,
        ),
      ],
    );
  }
}
