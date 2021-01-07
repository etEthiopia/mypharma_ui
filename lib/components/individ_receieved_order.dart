import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class IndividReceivedOrder extends StatefulWidget {
  @override
  _IndividReceivedOrderState createState() => _IndividReceivedOrderState();

  IndividReceivedOrder(
      {this.name, this.price, this.to, this.date, this.status});
  final String name;
  final String price;
  final String to;
  final String date;
  final String status;
}

class _IndividReceivedOrderState extends State<IndividReceivedOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(3.0, 3.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: dark, fontSize: 15, fontFamily: defaultFont),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    widget.price,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: primary, fontSize: 15, fontFamily: defaultFont),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Status",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    Text(
                      widget.status,
                      style: TextStyle(
                          color: darksecond,
                          fontSize: 15,
                          fontFamily: defaultFont),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
