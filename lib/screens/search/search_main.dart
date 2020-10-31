import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class SearchMain extends StatefulWidget {
  @override
  _SearchMainState createState() => _SearchMainState();
}

class _SearchMainState extends State<SearchMain> {
  Widget _searchComp({String title, String image, String to}) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(5),
          child: Hero(
              tag: title,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                      onTap: () {},
                      child: GridTile(
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/section/$image",
                                    ))),
                          ),
                        ),
                        footer: Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 7.0),
                              child: Text(
                                title,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: darksecond,
                                    fontSize: 20,
                                    fontFamily: defaultFont),
                              ),
                            )),
                      ))))),
    );
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Scaffold(
        appBar: cleanAppBar(title: "Search"),
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: <Widget>[
              _searchComp(
                  title: "Search for a Product",
                  image: "search_product.jpg",
                  to: "//"),
              _searchComp(
                  title: "Search for a Comapany",
                  image: "search_org.jpg",
                  to: "//"),
              _searchComp(
                  title: "Search for an Article",
                  image: "search_article.jpg",
                  to: "//"),
            ],
          ),
        )),
      );
    }
    return Scaffold(
      appBar: cleanAppBar(title: "Search"),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: <Widget>[
            _searchComp(
                title: "Search for a Product",
                image: "search_product.jpg",
                to: "//"),
            _searchComp(
                title: "Search for a Comapany",
                image: "search_org.jpg",
                to: "//"),
            _searchComp(
                title: "Search for an Article",
                image: "search_article.jpg",
                to: "//"),
          ],
        ),
      )),
    );
  }
}
