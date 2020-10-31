import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class LoginMain extends StatefulWidget {
  @override
  _LoginMainState createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    Widget _logoSection() {
      return Container(
          margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
          alignment: Alignment.topCenter,
          child: Image.asset(
            "assets/images/logo/logo100.png",
            width: 100.0,
            //make this image circular
          ));
    }

    Widget _amarepBtn() {
      return SizedBox(
        width: double.infinity,
        child: Material(
          color: primary,
          borderRadius: BorderRadius.circular(15.0),
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "I'm a Representative",
              style: TextStyle(color: Colors.white, fontFamily: defaultFont),
            ),
          ),
        ),
      );
    }

    Widget _amaphyBtn() {
      return SizedBox(
        width: double.infinity,
        child: Material(
          color: dark,
          borderRadius: BorderRadius.circular(15.0),
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "I'm a Physician",
              style: TextStyle(color: Colors.white, fontFamily: defaultFont),
            ),
          ),
        ),
      );
    }

    Widget _sizedBox() {
      return SizedBox(height: 30);
    }

    Widget _loginText(bool por) {
      return Text(
        "Log In",
        style: TextStyle(
            color: por == true ? Colors.white : dark,
            fontSize: 30,
            fontFamily: defaultFont),
      );
    }

    Widget _repText() {
      return Text(
        "If you are a representative of an organization, click the button above",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12, fontFamily: defaultFont),
      );
    }

    Widget _phyText() {
      return Text(
        "If you are our user who is on medical field, click the button above",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12, fontFamily: defaultFont),
      );
    }

    Widget _smallsizedBox() {
      return SizedBox(height: 10);
    }

    Widget _divider(bool por) {
      return Divider(color: por == true ? accent : extralight);
    }

    Widget _createaccountBtn(bool por) {
      return SizedBox(
        width: double.infinity,
        child: Material(
          color: por == true ? accent : extralight,
          borderRadius: BorderRadius.circular(15.0),
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "Create an Account",
              style: TextStyle(
                  color: por == true ? Colors.white : darksecond,
                  fontFamily: defaultFont),
            ),
          ),
        ),
      );
    }

    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return SafeArea(
        child: Scaffold(
            body: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: primary,
                padding: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  children: <Widget>[
                    _logoSection(),
                    _sizedBox(),
                    _loginText(true),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        _sizedBox(),
                        _amarepBtn(),
                        _smallsizedBox(),
                        _repText(),
                        _sizedBox(),
                        _amaphyBtn(),
                        _smallsizedBox(),
                        _phyText(),
                        _smallsizedBox(),
                        _divider(true),
                        _createaccountBtn(true)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      );
    } else {
      return Scaffold(
          body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: primary,
                padding: EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
                child: Column(
                  children: <Widget>[
                    _logoSection(),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            _divider(false),
                            _createaccountBtn(false),
                            _smallsizedBox()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      _loginText(false),
                      _sizedBox(),
                      _amarepBtn(),
                      _smallsizedBox(),
                      _repText(),
                      _sizedBox(),
                      _amaphyBtn(),
                      _smallsizedBox(),
                      _phyText(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ));
    }
  }
}
