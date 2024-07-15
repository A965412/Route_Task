import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Data/Model/ProductsResponse.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final Product product;

  const ProductItem({required this.index, required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Colors.blueGrey)),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: product.thumbnail ?? "",
                      fit: BoxFit.contain,
                      width: double.infinity,
                      height: 150,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error_outline, size: 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border:
                                Border.all(width: 2, color: Colors.blueGrey)),
                        child: const Icon(
                          Icons.favorite_outline,
                          color: Color(0xff004182),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 8),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      product.title ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 7),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Text(
                          "EGP ${(product.price!)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff004182),
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13),
                  Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 13, right: 8),
                    child: Row(
                      children: [
                        const Text(
                          "Review",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "(${product.rating})",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const Spacer(),
                        ImageIcon(
                          size: 26,
                          AssetImage("assets/images/🦆 icon _plus circle_.png"),
                          color: Color.fromARGB(255, 15, 46, 109),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}