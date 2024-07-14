import 'package:flutter/material.dart';
import 'package:routetask/Ui/Product_Screen/Product_Screen.dart';
import 'package:routetask/Ui/Widget/Product_Item.dart';
import 'package:routetask/Ui/Widget/Row_Widget.dart';
import 'package:routetask/Ui/Widget/Search_Widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
         home: ProductScreen());
  }
}
