import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/components/drawers.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class ProductSize extends StatefulWidget {
  @override
  _ProductSizeState createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  final TextEditingController _textController = TextEditingController();

  Widget _image() {
    return SizedBox(
      width: 150,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/product/zytrec.jpg',
                ))),
        child: Text(""),
      ),
    );
  }

  Widget _porname() {
    return Text("Zytrec - Rapid Acting",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontFamily: defaultFont));
  }

  Widget _category() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Category",
            style: TextStyle(
                color: extralight, fontSize: 10, fontFamily: defaultFont)),
        Text("Pill",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontFamily: defaultFont))
      ],
    );
  }

  Widget _country() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Country",
            style: TextStyle(
                color: extralight, fontSize: 10, fontFamily: defaultFont)),
        Text("Switzerland",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontFamily: defaultFont))
      ],
    );
  }

  Widget _from() {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: dark,
          border: Border.symmetric(vertical: BorderSide(color: light))),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("From",
              style: TextStyle(
                  color: extralight, fontSize: 10, fontFamily: defaultFont)),
          Text("Mulugeta Ltd",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: defaultFont))
        ],
      ),
    );
  }

  Widget _titlebar(por) {
    if (por) {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _porname(),
              SizedBox(
                height: 5,
              ),
              _category(),
              _country(),
            ],
          ),
        ),
      );
    }
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _category(),
            _country(),
          ],
        ),
      ),
    );
  }

  Widget _details(bool por) {
    return Expanded(
      child: Container(
        color: Colors.white,
        margin: por == true ? EdgeInsets.all(20) : EdgeInsets.all(0),
        padding: por == false
            ? EdgeInsets.symmetric(horizontal: 20)
            : EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Package Price",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    Text("200 ETB",
                        style: TextStyle(
                            color: darksecond,
                            fontSize: 20,
                            fontFamily: defaultFont))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // por == true ? Text("") : _from(),
                    Text("Package Capacity",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    Text("15 Pieces",
                        style: TextStyle(
                            color: darksecond,
                            fontSize: 20,
                            fontFamily: defaultFont))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _buyPackage(),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: primary,
            ),
            SizedBox(
              height: 5,
            ),
            _buySingles(por),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: primary,
            ),
            SizedBox(
              height: 5,
            ),
            por == true ? _orgs(true) : Text(''),
          ],
        ),
      ),
    );
  }

  Widget _buyPackage() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Amount",
                  style: TextStyle(
                      color: light, fontSize: 10, fontFamily: defaultFont)),
              TextFormField(
                controller: _textController,
                decoration: InputDecoration(isDense: true),
                keyboardType: TextInputType.text,
                cursorColor: primary,
              ),
            ],
          ),
        ),
        Expanded(
            flex: 4,
            child: Container(
              //width: width,
              padding: EdgeInsets.all(10),
              child: SizedBox(
                child: Material(
                  color: primary,
                  borderRadius: BorderRadius.circular(15.0),
                  child: FlatButton(
                      onPressed: () {},
                      child: Container(
                        // padding: EdgeInsets.symmetric(
                        //     vertical: 10, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Add to Cart",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            )),
      ],
    );
  }

  Widget _buySingles(bool por) {
    if (por) {
      return Column(
        children: <Widget>[
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Single Price",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    Text("15 ETB",
                        style: TextStyle(
                            color: darksecond,
                            fontSize: 20,
                            fontFamily: defaultFont))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Amount",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    TextFormField(
                      controller: _textController,
                      decoration: InputDecoration(isDense: true),
                      keyboardType: TextInputType.text,
                      cursorColor: primary,
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    //width: width,
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      child: Material(
                        color: primary,
                        borderRadius: BorderRadius.circular(15.0),
                        child: FlatButton(
                            onPressed: () {},
                            child: Container(
                              // padding: EdgeInsets.symmetric(
                              //     vertical: 10, horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Single Price",
                  style: TextStyle(
                      color: light, fontSize: 10, fontFamily: defaultFont)),
              Text("15 ETB",
                  style: TextStyle(
                      color: darksecond, fontSize: 20, fontFamily: defaultFont))
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Amount",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    TextFormField(
                      controller: _textController,
                      decoration: InputDecoration(isDense: true),
                      keyboardType: TextInputType.text,
                      cursorColor: primary,
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    //width: width,
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      child: Material(
                        color: primary,
                        borderRadius: BorderRadius.circular(15.0),
                        child: FlatButton(
                            onPressed: () {},
                            child: Container(
                              // padding: EdgeInsets.symmetric(
                              //     vertical: 10, horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      );
    }
  }

  Widget _orgs(bool por) {
    return Column(
      children: <Widget>[
        Text("Your Calculated Current Amount",
            style: TextStyle(
                color: por == true ? light : extralight,
                fontSize: 15,
                fontFamily: defaultFont)),
        Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: primary, width: 2)),
            child: Text(
              "400 ETB",
              style: TextStyle(
                  color: primary, fontSize: 15, fontFamily: defaultFont),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    _textController.text = "1";
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Scaffold(
        appBar: cleanAppBar(title: "Packaging"),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              _image(),
                              _titlebar(true),
                            ],
                          ),
                        ),
                        _from(),
                      ],
                    ),
                  ),
                  _details(true),
                ],
              )),
        )),
      );
    } else {
      return Scaffold(
        appBar: cleanAppBar(title: "Packaging"),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            color: primary,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: primary,
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  _image(),
                                  _titlebar(true),
                                ],
                              ),
                            ),
                            _from(),
                            _orgs(false)
                          ],
                        ),
                      ),
                    ),
                    _details(false),
                  ],
                )
              ],
            ),
          ),
        )
            // Container(
            //     child: Row(
            //   children: <Widget>[
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //           color: primary,
            //         ),
            //         child: SingleChildScrollView(
            //           child: Column(
            //             children: <Widget>[
            //               Container(
            //                 child: Row(
            //                   children: <Widget>[
            //                     _image(),
            //                     _titlebar(true),
            //                   ],
            //                 ),
            //               ),
            //               _from(),
            //               _orgs()
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //     _details(false)
            //   ],
            // )),
            ),
      );
    }
  }
}
