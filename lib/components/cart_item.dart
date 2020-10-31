import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

Widget cartItem(
    {String image,
    String name,
    String date,
    String price,
    String to,
    String packaging,
    String amount,
    bool package}) {
  return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: const Offset(3.0, 3.0),
          blurRadius: 5.0,
          spreadRadius: 2.0,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          //color: Colors.green,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/product/$image",
                              )),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                          )),
                      child: Text("")),
                  Text(
                    "$date",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: dark, fontSize: 10, fontFamily: defaultFont),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 85,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "$name",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: dark, fontSize: 20, fontFamily: defaultFont),
                      ),
                      Text(
                        "$to",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: primary,
                            fontSize: 12,
                            fontFamily: defaultFont),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 75,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15))),
                        child: IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: dark,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // package == true
                    //     ? Text(
                    //         "$packaging",
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
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Amount: ",
                              style: TextStyle(
                                  color: primary,
                                  fontSize: 15,
                                  fontFamily: defaultFont),
                            ),
                            Text(
                              "$amount",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: dark,
                                  fontSize: 15,
                                  fontFamily: defaultFont),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5, bottom: 5),
                          child: Text(
                            "$price",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: dark,
                                fontSize: 20,
                                fontFamily: defaultFont),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ));
}
