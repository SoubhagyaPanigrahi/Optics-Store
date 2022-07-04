import 'package:flutter/material.dart';

import 'card_counter.dart';

class CounterwithFav extends StatelessWidget {
  const CounterwithFav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.redAccent,
          ),
          // color: Colors.redAccent,
          height: 32,
          width: 32,
          child: Icon(Icons.favorite_outlined, color: Colors.white),
        ),
      ],
    );
  }
}
