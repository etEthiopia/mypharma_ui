import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class CartProd extends StatefulWidget {
  CartProd(
      {Key key,
      this.image,
      this.name,
      this.date,
      this.price,
      this.to,
      this.packaging,
      this.amount,
      this.package,
      this.selected})
      : super(key: key);

  @override
  _CartProdState createState() => _CartProdState();

  final String image;
  final String name;
  final String date;
  final String price;
  final String to;
  final String packaging;
  final String amount;
  final bool package;
  bool selected;
}

class _CartProdState extends State<CartProd> {
  selected() {
    setState(() {
      widget.selected = !widget.selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey[300],
          offset: const Offset(3.0, 3.0),
          blurRadius: 5.0,
          spreadRadius: 2.0,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: <Widget>[
                Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        //color: Colors.green,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/product/${widget.image}",
                            )),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        )),
                    child: Text("")),
                Container(
                  child: Text(
                    "${widget.date}",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: dark, fontSize: 10, fontFamily: defaultFont),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${widget.name}",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: dark, fontSize: 17, fontFamily: defaultFont),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 10,
                  ),

                  // SizedBox(height: 5),
                  // widget.package == true
                  //     ? Text(
                  //         "${widget.packaging}",
                  //         maxLines: 1,
                  //         overflow: TextOverflow.ellipsis,
                  //         style: TextStyle(
                  //             color: dark,
                  //             fontSize: 12,
                  //             fontFamily: defaultFont),
                  //       )
                  //     : Text(
                  //         "Item Type: Singles",
                  //         maxLines: 1,
                  //         overflow: TextOverflow.ellipsis,
                  //         style: TextStyle(
                  //             color: dark,
                  //             fontSize: 12,
                  //             fontFamily: defaultFont),
                  //       ),

                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                        onTap: () {
                          print("close");
                        },
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Price: ",
                              style: TextStyle(
                                  color: primary,
                                  fontSize: 13,
                                  fontFamily: defaultFont),
                            ),
                            Text(
                              "${widget.price}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: dark,
                                  fontSize: 14,
                                  fontFamily: defaultFont),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Total: ",
                              style: TextStyle(
                                  color: primary,
                                  fontSize: 13,
                                  fontFamily: defaultFont),
                            ),
                            Text(
                              "${widget.amount} ETB",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: dark,
                                  fontSize: 14,
                                  fontFamily: defaultFont),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Icon(
                  Icons.arrow_drop_up,
                  size: 25,
                ),
                onTap: () {
                  print("increase");
                },
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "1",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: dark, fontSize: 17, fontFamily: defaultFont),
              ),
              SizedBox(
                height: 1,
              ),
              InkWell(
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 25,
                ),
                onTap: () {
                  print("decrease");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
