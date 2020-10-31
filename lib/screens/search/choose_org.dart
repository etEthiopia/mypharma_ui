import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/components/org.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:flutter/material.dart';

class ChooseOrg extends StatefulWidget {
  @override
  _ChooseOrgState createState() => _ChooseOrgState();
}

class _ChooseOrgState extends State<ChooseOrg> {
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

  Widget _orgPrompt() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
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
                hintText: "Company Type",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cleanAppBar(title: "Whole Sellers"),
      body: Container(
        child: Column(
          children: <Widget>[
            _searchPrompt(),
            _orgPrompt(),
            Expanded(
              child: Container(
                color: Colors.grey[150],
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Org();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
