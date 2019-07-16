import 'package:flutter/material.dart';

class ProductsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.fromLTRB(8, 30, 8, 8),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/products_tab.jpg"),
            fit: BoxFit.cover,
          )),
    );
  }
}