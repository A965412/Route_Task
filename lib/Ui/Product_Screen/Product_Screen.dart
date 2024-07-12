import 'package:flutter/material.dart';
import 'package:routetask/Widget/Row_Widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image(image: AssetImage('assets/images/app_bar_logo.png'))),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5), child: Row_Widget())
        ],
      ),
    );
  }
}
