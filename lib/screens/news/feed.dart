import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/components/article.dart';
import 'package:chat_app/components/drawers.dart';

import 'package:chat_app/temp/feed_list.dart';
import 'package:chat_app/temp/newproducts_list.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  void _fixProductsList() {
    newproductsList.add(moreProdcuts);
  }

  double padd = 0;

  void _paddingFix(bool por, double size) {
    if (por) {
      setState(() {
        padd = 10;
      });
    } else {
      setState(() {
        padd = size;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      _paddingFix(true, 0);
    } else {
      _paddingFix(false, MediaQuery.of(context).size.width / 8);
    }
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: simpleAppBar(title: "Feed"),
      drawer: anonDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padd),
        child: Material(
          color: Colors.grey[100],
          child: Container(
            padding: orientation == Orientation.portrait
                ? EdgeInsets.all(0)
                : EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: feedList.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
              itemBuilder: (BuildContext context, int index) {
                return article(
                  title: feedList[index]["title"],
                  image: feedList[index]["image"],
                  content: feedList[index]["content"],
                  time: feedList[index]["time"],
                );
              },
            ),
          ),
        ),
      )),
    );
  }
}
