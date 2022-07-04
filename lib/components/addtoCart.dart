import 'package:flutter/material.dart';

import '../models/ProductsMen.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20.0),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart_sharp),
                color: product.color),
          ),
          Expanded(
            child: SizedBox(
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: product.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
