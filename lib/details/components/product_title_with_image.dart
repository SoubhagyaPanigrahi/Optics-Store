import 'package:flutter/material.dart';

import '../../models/ProductsMen.dart';

class ProductTitlewithImage extends StatelessWidget {
  const ProductTitlewithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Price\n'),
                    TextSpan(
                      text: '\₹${product.price}',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Hero(
                    tag: '${product.id}',
                    child: Image.asset(product.image, fit: BoxFit.fill)),
              )
            ],
          )
        ],
      ),
    );
  }
}
