import 'package:flutter/material.dart';
import 'package:routetask/Ui/Widget/Product_Item.dart';
import 'package:routetask/Ui/Widget/Row_Widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Image(image: AssetImage('assets/images/app_bar_logo.png'))),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row_Widget(),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2.4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemBuilder: (context, index) {
                  return Products_Item();
                }),
          )
        ],
      ),
    );
  }
}
