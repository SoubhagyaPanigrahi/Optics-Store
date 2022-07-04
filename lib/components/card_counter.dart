import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
            width: 40,
            height: 32,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
              onPressed: () {
                if (numOfItem > 1) {
                  setState(() {
                    numOfItem--;
                  });
                }
              },
              child: Icon(Icons.remove),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 / 2),
          child: Text(numOfItem.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6),
        ),
        SizedBox(
            width: 40,
            height: 32,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
              onPressed: () {
                setState(() {
                  numOfItem++;
                });
              },
              child: Icon(Icons.add),
            )),
      ],
    );
  }
}
