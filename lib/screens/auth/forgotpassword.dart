import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _key = GlobalKey<FormState>();
  bool _autoValidate = false;
  final TextEditingController _emailController = TextEditingController();

  _reset() {
    print("FORM KEY: " + _key.currentState.toString());
    if (_key.currentState.validate()) {
      print("validated");
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  Widget _logoSection() {
    return Container(
        margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
        alignment: Alignment.topCenter,
        child: Image.asset(
          "assets/images/logo/logo100.png",
          width: 100.0,
        ));
  }

  Widget _sizedbox() {
    return SizedBox(
      height: 20.0,
    );
  }

  Widget _emailText() {
    return Text(
      "Enter your email and wait for a reply to reset your password",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 12, fontFamily: defaultFont),
    );
  }

  Widget _emailPrompt() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.white.withOpacity(0.0),
        elevation: 0.0,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: primary, width: 2, style: BorderStyle.solid)),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Email",
                icon: Icon(
                  Icons.mail,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
            validator: (value) {
              if (value.isEmpty) {
                return "The email cannot be empty";
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
          ),
        ),
      ),
    );
  }

  Widget _fogotText() {
    return Text(
      "Forgot Password",
      style: TextStyle(color: dark, fontSize: 30, fontFamily: defaultFont),
    );
  }

  Widget _resetBtn() {
    return SizedBox(
      width: double.infinity,
      child: Material(
        elevation: 1,
        shadowColor: light,
        color: dark,
        borderRadius: BorderRadius.circular(15.0),
        child: FlatButton(
          onPressed: () {
            _reset();
          },
          child: Text(
            "SUBMIT",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: defaultFont),
          ),
        ),
      ),
    );
  }

  Widget _smallsizedBox() {
    return SizedBox(height: 10);
  }

  Widget _divider() {
    return Divider(color: accent);
  }

  Widget _backtologinBtn() {
    return SizedBox(
      width: double.infinity,
      child: Material(
        color: accent,
        borderRadius: BorderRadius.circular(15.0),
        child: FlatButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
          child: Text(
            "Back to Login",
            style: TextStyle(color: Colors.white, fontFamily: defaultFont),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: _key,
                autovalidate: _autoValidate,
                child: Column(
                  children: <Widget>[
                    _logoSection(),
                    _sizedbox(),
                    _fogotText(),
                    _sizedbox(),
                    _emailPrompt(),
                    _emailText(),
                    _sizedbox(),
                    _sizedbox(),
                    _sizedbox(),
                    _sizedbox(),
                    _resetBtn(),
                    _divider(),
                    _backtologinBtn(),
                    _smallsizedBox(),
                    // Expanded(
                    //   child: Container(
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: <Widget>[
                    //         _divider(),
                    //         _backtologinBtn(),
                    //         _smallsizedBox()
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _logoSection(),
                        _sizedbox(),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              _divider(),
                              _backtologinBtn(),
                              _smallsizedBox()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                    child: Form(
                        key: _key,
                        autovalidate: _autoValidate,
                        child: Column(
                          children: <Widget>[
                            _fogotText(),
                            _sizedbox(),
                            _emailPrompt(),
                            _emailText(),
                            _sizedbox(),
                            _resetBtn(),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}
