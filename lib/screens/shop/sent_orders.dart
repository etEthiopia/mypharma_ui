import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/components/sent_order.dart';
import 'package:chat_app/temp/sentorders_list.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class SentOrders extends StatefulWidget {
  @override
  _SentOrdersState createState() => _SentOrdersState();
}

class _SentOrdersState extends State<SentOrders> {
  int _selectedCategory = 0;
  Widget _searchPrompt() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.white.withOpacity(0.8),
        elevation: 0.0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: primary, width: 2, style: BorderStyle.solid)),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search Wholesellers",
                icon: Icon(
                  Icons.search,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            //controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "The Search cannot be empty";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<dynamic>> categories = [
    DropdownMenuItem(
      value: 0,
      child: Text(
        "All",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text(
        "Order Pending",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
    DropdownMenuItem(
      value: 2,
      child: Text(
        "Order Seen",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
    DropdownMenuItem(
      value: 3,
      child: Text(
        "Order Accepted",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
    DropdownMenuItem(
      value: 4,
      child: Text(
        "Order Denied",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
    DropdownMenuItem(
      value: 5,
      child: Text(
        "On Delivery",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
  ];

  Widget _categoryPrompt() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: DropdownButtonFormField(
        style: TextStyle(color: dark, fontFamily: defaultFont),
        items: categories,
        hint: Text("Status"),
        value: _selectedCategory,
        onChanged: (value) {
          setState(() {
            _selectedCategory = value;
          });
        },
        isExpanded: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(title: "Sent Orders"),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Expanded(
                //   child: _searchPrompt(),
                // ),
                // Expanded(
                //   flex: 2,
                //   child: _categoryPrompt(),
                // ),
                Expanded(
                  child: _categoryPrompt(),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                color: Colors.grey[150],
                child: ListView.builder(
                  itemCount: sentOrdersList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SentOrder(
                        date: sentOrdersList[index]["date"],
                        price: sentOrdersList[index]["price"],
                        items: sentOrdersList[index]["items"],
                        to: sentOrdersList[index]["to"],
                        status: sentOrdersList[index]["status"]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
