import 'package:flutter/material.dart';
import 'package:specsshop/details/components/product_title_with_image.dart';
import 'package:specsshop/models/ProductsMen.dart';

import '../../components/addtoCart.dart';
import '../../components/card_counter.dart';
import '../../components/counter_with_fav.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  // const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 20.0, right: 20.0),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Color"),
                              Row(
                                children: <Widget>[
                                  ColorDot(
                                      color: Colors.black, isSelected: true),
                                  ColorDot(color: Colors.blueGrey),
                                  ColorDot(
                                      color: Color.fromARGB(255, 81, 238, 152)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          product.desc,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 20.0 / 2,
                      ),
                      CounterwithFav(),
                      SizedBox(
                        height: 20.0 / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitlewithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0 / 4, right: 20.0 / 2),
      padding: EdgeInsets.all(2.0),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
