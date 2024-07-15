import 'package:flutter/material.dart';
import 'package:routetask/Ui/Product_Screen/Product_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ProductListScreen());
  }
}
