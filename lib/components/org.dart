import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class Org extends StatefulWidget {
  @override
  _OrgState createState() => _OrgState();
}

class _OrgState extends State<Org> {
  Widget _logoSection() {
    return Container(
        alignment: Alignment.center,
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/images/page/mulugetalimited.png'),
        ));
  }

  Widget _compnameText() {
    return Text(
      "Mulugeta Medics Ltdddfsaadas.",
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(color: dark, fontSize: 15, fontFamily: defaultFont),
    );
  }

  Widget _smallvsizedBox() {
    return SizedBox(width: 20);
  }

  Widget _smallsizedBox() {
    return SizedBox(
      height: 5,
    );
  }

  Widget _star(String type) {
    if (type == "full") {
      return Icon(
        Icons.star,
        color: gold,
        size: 15,
      );
    } else if (type == "half") {
      return Icon(
        Icons.star_half,
        color: gold,
        size: 15,
      );
    } else {
      return Icon(
        Icons.star_border,
        color: gold,
        size: 15,
      );
    }
  }

  Widget _ratingno(int no) {
    return Text(
      "$no ratings submitted",
      style: TextStyle(fontSize: 10, color: light),
    );
  }

  Widget _rating() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _star("full"),
              _star("full"),
              _star("full"),
              _star("half"),
              _star("empty"),
              _smallvsizedBox(),
              _ratingno(34)
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: const Offset(3.0, 3.0),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      //padding: EdgeInsets.only(left: 50, right: 50, bottom: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _logoSection(),
              _smallvsizedBox(),
              Column(
                children: <Widget>[
                  _compnameText(),
                  _smallsizedBox(),
                  _rating()
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
