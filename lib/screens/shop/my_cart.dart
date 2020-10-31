import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/components/cart_item.dart';
import 'package:chat_app/components/cart_prod.dart';
import 'package:chat_app/components/drawers.dart';
import 'package:chat_app/temp/cart_list.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(title: "My Cart"),
      drawer: pharmacyDrawer(),
      body: SafeArea(
          child: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: cartList.length,
                itemBuilder: (BuildContext context, int index) {
                  return cartItem(
                      name: cartList[index]["name"],
                      image: cartList[index]["image"],
                      date: cartList[index]["date"],
                      price: cartList[index]["price"],
                      packaging: cartList[index]["packaging"],
                      to: cartList[index]["to"],
                      amount: cartList[index]["amount"],
                      package: cartList[index]["package"]);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  elevation: 1,
                  shadowColor: light,
                  color: dark,
                  borderRadius: BorderRadius.circular(15.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Order All",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: defaultFont),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
