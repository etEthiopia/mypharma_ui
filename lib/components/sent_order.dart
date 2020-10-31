import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class SentOrder extends StatefulWidget {
  @override
  _SentOrderState createState() => _SentOrderState();

  SentOrder({this.items, this.price, this.to, this.date, this.status});
  final List<String> items;
  final String price;
  final String to;
  final String date;
  final String status;
}

class _SentOrderState extends State<SentOrder> {
  String generatename(bool por) {
    List<String> items = widget.items;
    String name;
    if (por) {
      if (items.length > 1) {
        if ((items[0].length + items[1].length) <= 35) {
          if (items.length > 2) {
            name = items[0] +
                ", " +
                items[1] +
                " & " +
                (items.length - 2).toString() +
                " More";
          } else {
            name = items[0] + ", " + items[1];
          }
        } else if ((items[0].length) <= 35) {
          name = items[0] + " & " + (items.length - 1).toString() + " More";
        } else if ((items[1].length) <= 35) {
          name = items[1] + " & " + (items.length - 1).toString() + " More";
        } else {
          name = (items.length).toString() + " Items Ordered";
        }
      } else {
        if ((items[0].length) <= 35) {
          name = items[0];
        } else {
          name = "1 Item Ordered";
        }
      }
    } else {
      if (items.length > 2) {
        if ((items[0].length + items[1].length + items[2].length) <= 75) {
          if (items.length > 3) {
            name = items[0] +
                ", " +
                items[1] +
                ", " +
                items[2] +
                " & " +
                (items.length - 3).toString() +
                " More";
          } else {
            name = items[0] +
                ", " +
                items[1] +
                " & " +
                (items.length - 2).toString() +
                " More";
          }
        } else if ((items[0].length) <= 35) {
          name = items[0] + " & " + (items.length - 1).toString() + " More";
        } else if ((items[1].length) <= 35) {
          name = items[1] + " & " + (items.length - 1).toString() + " More";
        } else {
          name = (items.length).toString() + " Items Ordered";
        }
      } else if (items.length > 1) {
        if ((items[0].length + items[1].length) <= 75) {
          if (items.length > 2) {
            name = items[0] +
                ", " +
                items[1] +
                " & " +
                (items.length - 2).toString() +
                " More";
          } else {
            name = items[0] + ", " + items[1];
          }
        } else if ((items[0].length) <= 75) {
          name = items[0] + " & " + (items.length - 1).toString() + " More";
        } else if ((items[1].length) <= 75) {
          name = items[1] + " & " + (items.length - 1).toString() + " More";
        } else {
          name = (items.length).toString() + " Items Ordered";
        }
      } else {
        if ((items[0].length) <= 75) {
          name = items[0];
        } else {
          name = "1 Item Ordered";
        }
      }
    }
    return name;
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    bool por = orientation == Orientation.portrait ? true : false;
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            generatename(por),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:
                TextStyle(color: dark, fontSize: 15, fontFamily: defaultFont),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget.to,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: primary, fontSize: 15, fontFamily: defaultFont),
          ),
          SizedBox(
            height: 5,
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
              Expanded(
                child: Text(
                  widget.date,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: dark, fontSize: 12, fontFamily: defaultFont),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Status",
                      style: TextStyle(
                          color: light, fontSize: 10, fontFamily: defaultFont)),
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
          )
        ],
      ),
    );
  }
}
