import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/components/drawers.dart';
import 'package:chat_app/components/newproduct.dart';
import 'package:chat_app/components/org.dart';
import 'package:chat_app/temp/newproducts_list.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:flutter/material.dart';

class NewProducts extends StatefulWidget {
  @override
  _NewProductsState createState() => _NewProductsState();
}

class _NewProductsState extends State<NewProducts> {
  int col = 0;
  void _colFix(bool por) {
    if (por) {
      setState(() {
        col = 2;
      });
    } else {
      setState(() {
        col = 4;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      _colFix(true);
    } else {
      _colFix(false);
    }
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: simpleAppBar(title: "New Products"),
      drawer: anonDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: GridView.builder(
            itemCount: newproductsList.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: col),
            itemBuilder: (BuildContext context, int index) {
              return newproduct(
                name: newproductsList[index]["name"],
                image: newproductsList[index]["image"],
                org: newproductsList[index]["org"],
                price: newproductsList[index]["price"],
              );
            },
          ),
        ),
      ),
    );
  }
}
