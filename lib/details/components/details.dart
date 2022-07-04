import 'package:flutter/material.dart';
import 'package:specsshop/details/components/body.dart';
// import 'package:specsshop/components/body.dart';
import '../../models/ProductsMen.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: product.color,
        appBar: buildAppbar(context),
        body: Body(product: product));
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.pop(context),
          color: Colors.black87,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.black87,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_rounded),
            onPressed: () {},
            color: Colors.black87,
          ),
          SizedBox(
            width: 20.0 / 2,
          )
        ]);
  }
}
