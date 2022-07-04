import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Sunglasses",
    "Eyeglasses",
    "Contact Lens",
    "Computer glasses",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: ((context, index) => buildCategory(index))),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        selectedIndex == index ? Colors.black : Colors.black45),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20.0 / 4),
                  height: 2,
                  width: 30,
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent)
            ],
          ),
        ),
      );
}
