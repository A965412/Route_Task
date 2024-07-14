import 'package:flutter/material.dart';
import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';

class Products_Item extends StatelessWidget {
  bool isWishlisted = false;
  ProductsDataEntity productsdata ; 
  Products_Item({Key? key, required this.productsdata}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromARGB(255, 1, 0, 65),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                   productsdata.thumbnail ?? " " , 
                    fit: BoxFit.fill,
                    width: 160,
                    height: 80,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 2,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 14,
                    child: IconButton(
                      color: const Color.fromARGB(255, 1, 0, 65),
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: isWishlisted == true
                          ? const Icon(Icons.favorite_rounded)
                          : const Icon(
                              Icons.favorite_border_rounded,
                            ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                productsdata.title ?? " ",
                maxLines: 2,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 1, 0, 65),
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    "EGP ${productsdata.price}",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 1, 0, 65),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    "Reviews (${productsdata.rating})",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 1, 0, 65),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Image(image: AssetImage('assets/images/stat_icon.png')),
                  const Spacer(
                    flex: 1,
                  ),
                  const ImageIcon(
                    size: 24,
                    AssetImage("assets/images/🦆 icon _plus circle_.png"),
                    color: Color.fromARGB(255, 15, 46, 109),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
