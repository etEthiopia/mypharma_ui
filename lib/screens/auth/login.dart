import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //_layout(authService: authService)
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _LoginForm()));
  }
}

class _LoginForm extends StatefulWidget {
  @override
  __LoginFormState createState() => __LoginFormState();
}

class __LoginFormState extends State<_LoginForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    _signin() {
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

    Widget _sizedBox() {
      return SizedBox(
        height: 20.0,
      );
    }

    Widget _emailPrompt() {
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
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
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

    Widget _passwordPrompt() {
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
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  icon: Icon(
                    Icons.lock,
                    color: dark,
                  ),
                  border: InputBorder.none,
                  isDense: true),
              controller: _passwordController,
              validator: (value) {
                if (value.isEmpty) {
                  return "The password cannot be empty";
                } else if (value.length < 6) {
                  return "The password length must be at least six";
                }
                return null;
              },
            ),
          ),
        ),
      );
    }

    Widget _signinBtn() {
      return SizedBox(
        width: double.infinity,
        child: Material(
          elevation: 1,
          shadowColor: light,
          color: dark,
          borderRadius: BorderRadius.circular(15.0),
          child: FlatButton(
            onPressed: () {
              _signin();
            },
            child: Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: defaultFont),
            ),
          ),
        ),
      );
    }

    Widget _forgotpassword() {
      return InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/forgotpassword');
          },
          child: Text(
            "Forgot Password",
            style: TextStyle(
                color: dark,
                decoration: TextDecoration.underline,
                fontFamily: defaultFont),
          ));
    }

    Widget _orText() {
      return Center(
        child: Text(
          "or",
          style: TextStyle(color: darksecond, fontFamily: defaultFont),
        ),
      );
    }

    Widget _divider() {
      return Divider(color: accent);
    }

    Widget _createaccountBtn() {
      return SizedBox(
        width: double.infinity,
        child: Material(
          color: accent,
          borderRadius: BorderRadius.circular(15.0),
          child: FlatButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/registerphy');
            },
            child: Text(
              "Create an Account",
              style: TextStyle(color: Colors.white, fontFamily: defaultFont),
            ),
          ),
        ),
      );
    }

    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Container(
        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: <Widget>[
                Form(
                  key: _key,
                  autovalidate: _autoValidate,
                  child: Column(children: <Widget>[
                    _logoSection(),
                    _sizedBox(),
                    _emailPrompt(),
                    _passwordPrompt(),
                    _sizedBox(),
                    _signinBtn(),
                    _sizedBox(),
                    _forgotpassword(),
                    _sizedBox(),
                    _orText(),
                    _divider(),
                    _createaccountBtn()
                  ]),
                ),
              ],
            )),
      );
    } else {
      return Container(
          child: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: EdgeInsets.only(top: 30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: <Widget>[
                      _logoSection(),
                      _divider(),
                      _createaccountBtn()
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Form(
                      key: _key,
                      autovalidate: _autoValidate,
                      child: Column(children: <Widget>[
                        _emailPrompt(),
                        _passwordPrompt(),
                        _sizedBox(),
                        _signinBtn(),
                        _sizedBox(),
                        _forgotpassword(),
                      ]),
                    )),
              ),
            ],
          ),
        ),
      ));
    }
  }
}
