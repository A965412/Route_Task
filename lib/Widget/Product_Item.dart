import 'package:flutter/material.dart';

class Products_Item extends StatelessWidget {
  bool isWishlisted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 50,
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
                child: Image.asset(
                  'assets/images/app_bar_logo.png',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 60,
                ),
              ),
              Positioned(
                top: 13,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
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
            height: 7,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'ProductName',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 1, 0, 65),
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text(
                  "EGP 000",
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
            height: 7,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text(
                  "Reviews (12)",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 1, 0, 65),
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(
                  width: 18,
                ),
                Image(image: AssetImage('assets/images/stat_icon.png')),
                Spacer(
                  flex: 1,
                ),
                ImageIcon(
                  size: 30,
                  AssetImage("assets/images/🦆 icon _plus circle_.png"),
                  color: Color.fromARGB(255, 15, 46, 109),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
