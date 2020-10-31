import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  double year = 2015;
  TextEditingController yeartext = TextEditingController();

  Widget _updateYear(x) {
    setState(() {
      year = x;
      yeartext.text = "2010 - " + year.toInt().toString().substring(2);
    });
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

  Widget _genericnamePrompt() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextFormField(
          decoration: InputDecoration(hintText: "Generic Name", isDense: true),
          keyboardType: TextInputType.text,
          cursorColor: primary,
          //controller: _textController,
          validator: (value) {
            if (value.isEmpty) {
              return "The password cannot be empty";
            } else {
              Pattern pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regex = RegExp(pattern);
              if (!regex.hasMatch(value)) {
                return 'Enter a valid email';
              }
            }
            return null;
          },
        ));
  }

  Widget _brandnamePrompt() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextFormField(
          decoration: InputDecoration(hintText: "Brand Name", isDense: true),
          keyboardType: TextInputType.text,
          cursorColor: primary,
          validator: (value) {
            if (value.isEmpty) {
              return "The password cannot be empty";
            } else {
              Pattern pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regex = RegExp(pattern);
              if (!regex.hasMatch(value)) {
                return 'Enter a valid email';
              }
            }
            return null;
          },
        ));
  }

  List<DropdownMenuItem<dynamic>> categories = [
    DropdownMenuItem(
        child: InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          "Pill",
          style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
        ),
      ),
    )),
    DropdownMenuItem(
        child: InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          "Medical Syrup",
          style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
        ),
      ),
    )),
    DropdownMenuItem(
        child: InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          "Sringe",
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

  Widget _year() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Manufactored Year",
            style: TextStyle(color: dark, fontFamily: defaultFont),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                    style: TextStyle(fontSize: 15),
                    decoration:
                        InputDecoration(hintText: "Year", isDense: true),
                    keyboardType: TextInputType.text,
                    cursorColor: primary,
                    controller: yeartext),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Slider(
                        activeColor: primary,
                        inactiveColor: extralight,
                        divisions: 10,
                        value: year,
                        max: 2020,
                        min: 2010,
                        onChanged: (x) {
                          print("Slider $x");
                          _updateYear(x);
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "2010",
                          style: TextStyle(
                              color: primary,
                              fontSize: 10,
                              fontFamily: defaultFont),
                        ),
                        Text(
                          "2020",
                          style: TextStyle(
                              color: primary,
                              fontSize: 10,
                              fontFamily: defaultFont),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _country() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextFormField(
          decoration: InputDecoration(hintText: "Country", isDense: true),
          keyboardType: TextInputType.text,
          cursorColor: primary,
          validator: (value) {
            if (value.isEmpty) {
              return "The password cannot be empty";
            } else {
              Pattern pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regex = RegExp(pattern);
              if (!regex.hasMatch(value)) {
                return 'Enter a valid email';
              }
            }
            return null;
          },
        ));
  }

  Widget _batchno() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextFormField(
          decoration: InputDecoration(hintText: "Batch Number", isDense: true),
          keyboardType: TextInputType.text,
          cursorColor: primary,
          validator: (value) {
            if (value.isEmpty) {
              return "The password cannot be empty";
            } else {
              Pattern pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regex = RegExp(pattern);
              if (!regex.hasMatch(value)) {
                return 'Enter a valid email';
              }
            }
            return null;
          },
        ));
  }

  Widget _searchBtn(bool por) {
    return Padding(
      padding:
          EdgeInsets.only(top: por == true ? 25.0 : 5.0, right: 20, left: 20),
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

  @override
  Widget build(BuildContext context) {
    yeartext.text = "2010 - " + year.toInt().toString().substring(2);
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Scaffold(
        appBar: cleanAppBar(title: "Search Product"),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _logoSection(),
                  _sizedBox(),
                  _genericnamePrompt(),
                  _brandnamePrompt(),
                  _categoryPrompt(),
                  _year(),
                  _country(),
                  _batchno(),
                  _searchBtn(true),
                ],
              ),
            ),
          ),
        ),
      );
    }
    return Scaffold(
        appBar: cleanAppBar(title: "Search Product"),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: _genericnamePrompt()),
                  Expanded(child: _brandnamePrompt()),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: _categoryPrompt()),
                  Expanded(child: _country()),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(flex: 2, child: _year()),
                  Expanded(child: _batchno()),
                ],
              ),
              _searchBtn(false),
            ])),
          ),
        ));
  }
}
