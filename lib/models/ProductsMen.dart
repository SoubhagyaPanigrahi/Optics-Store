import 'package:flutter/material.dart';

class Product {
  final String image, title, desc;
  final int price, id;
  final Color color;
  Product(
      {required this.image,
      required this.title,
      required this.price,
      required this.id,
      required this.color,
      required this.desc});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Ray Ban Sunglasses",
      price: 1490,
      color: Color(0XFFFB7883),
      image: "assets/images/1.png",
      desc:
          "Sunglasses or sun glasses (informally called shades or sunnies; more names below) are a form of protective eyewear designed primarily to prevent bright sunlight and high-energy visible light from damaging or discomforting the eyes."),
  Product(
      id: 2,
      title: "Fossil Trace Aviator",
      price: 3840,
      color: Color(0XFFE68398),
      image: "assets/images/3.png",
      desc:
          "Sunglasses or sun glasses (informally called shades or sunnies; more names below) are a form of protective eyewear designed primarily to prevent bright sunlight and high-energy visible light from damaging or discomforting the eyes."),
  Product(
      id: 3,
      title: "Velocity Sunglasses",
      price: 5200,
      color: Color.fromARGB(255, 120, 251, 249),
      image: "assets/images/2.png",
      desc:
          "Sunglasses or sun glasses (informally called shades or sunnies; more names below) are a form of protective eyewear designed primarily to prevent bright sunlight and high-energy visible light from damaging or discomforting the eyes."),
  Product(
      id: 4,
      title: "Rayban Gold Frame",
      price: 2200,
      color: Color.fromARGB(255, 210, 241, 72),
      image: "assets/images/5.png",
      desc:
          "Sunglasses or sun glasses (informally called shades or sunnies; more names below) are a form of protective eyewear designed primarily to prevent bright sunlight and high-energy visible light from damaging or discomforting the eyes."),
  Product(
      id: 5,
      title: "Olivio",
      price: 4580,
      color: Color.fromARGB(255, 29, 156, 31),
      image: "assets/images/6.png",
      desc:
          "Sunglasses or sun glasses (informally called shades or sunnies; more names below) are a form of protective eyewear designed primarily to prevent bright sunlight and high-energy visible light from damaging or discomforting the eyes."),
  Product(
      id: 6,
      title: "Prada",
      price: 4580,
      color: Color(0XFFAEAEAE),
      image: "assets/images/4.png",
      desc:
          "Sunglasses or sun glasses (informally called shades or sunnies; more names below) are a form of protective eyewear designed primarily to prevent bright sunlight and high-energy visible light from damaging or discomforting the eyes.")
];
