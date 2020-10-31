import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class SearchArticle extends StatefulWidget {
  @override
  _SearchArticleState createState() => _SearchArticleState();
}

class _SearchArticleState extends State<SearchArticle> {
  @override
  Widget build(BuildContext context) {
    Widget _keywordPrompt() {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Keywords: Word 1, Word 2", isDense: true),
            keyboardType: TextInputType.text,
            cursorColor: primary,
            //controller: _textController,
            // validator: (value) {
            //   if (value.isEmpty) {
            //     return "The password cannot be empty";
            //   } else {
            //     Pattern pattern =
            //         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
            //     RegExp regex = RegExp(pattern);
            //     if (!regex.hasMatch(value)) {
            //       return 'Enter a valid email';
            //     }
            //   }
            //   return null;
            // },
          ));
    }

    List<DropdownMenuItem<dynamic>> categories = [
      DropdownMenuItem(
          child: InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            "New Products",
            style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
          ),
        ),
      )),
      DropdownMenuItem(
          child: InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            "New Findings",
            style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
          ),
        ),
      )),
      DropdownMenuItem(
          child: InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            "Blogs",
            style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
          ),
        ),
      )),
      DropdownMenuItem(
          child: InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            "Other",
            style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
          ),
        ),
      )),
    ];

    Widget _categoryPrompt() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: DropdownButtonFormField(
          style: TextStyle(color: dark, fontFamily: defaultFont),
          items: categories,
          onChanged: (x) {},
          hint: Text("Category"),
        ),
      );
    }

    Widget _searchBtn() {
      return Padding(
        padding: EdgeInsets.only(top: 25, right: 20, left: 20),
        child: SizedBox(
          width: double.infinity,
          child: Material(
            elevation: 1,
            shadowColor: light,
            color: dark,
            borderRadius: BorderRadius.circular(15.0),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Search",
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: defaultFont),
              ),
            ),
          ),
        ),
      );
    }

    Widget _logoSection() {
      return Container(
          margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          alignment: Alignment.topCenter,
          child: Image.asset(
            "assets/images/logo/logo50.png",
            width: 50.0,
          ));
    }

    Widget _sizedBox() {
      return SizedBox(
        height: 10.0,
      );
    }

    return Scaffold(
      appBar: cleanAppBar(title: "Search Product"),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _sizedBox(),
                _logoSection(),
                _sizedBox(),
                _keywordPrompt(),
                _sizedBox(),
                _categoryPrompt(),
                _searchBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
