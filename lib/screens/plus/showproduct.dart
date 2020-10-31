import 'package:chat_app/components/product_details.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:flutter/material.dart';

class ShowProduct extends StatefulWidget {
  @override
  _ShowProductState createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(5),
          child: ProductDetails()),
    ));
  }
}
