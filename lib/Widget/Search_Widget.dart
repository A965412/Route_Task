import 'package:flutter/material.dart';

class Search_Widget extends StatelessWidget {
  const Search_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 320,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border:
            Border.all(color: const Color.fromARGB(255, 10, 9, 90), width: 1),
      ),
      child: const Row(
        children: [
          Image(
            image: AssetImage('assets/images/search_icon.png'),
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 9,
          ),
          Text(
            'What do you search for ?',
            style: TextStyle(
                color: Color.fromARGB(255, 147, 146, 146),
                fontSize: 15,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
