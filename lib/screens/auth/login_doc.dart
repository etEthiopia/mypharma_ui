import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class LoginDoc extends StatefulWidget {
  @override
  _LoginDocState createState() => _LoginDocState();
}

class _LoginDocState extends State<LoginDoc> {
  //_layout(authService: authService)
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _LoginDocForm()));
  }
}

class _LoginDocForm extends StatefulWidget {
  @override
  __LoginDocFormState createState() => __LoginDocFormState();
}

class __LoginDocFormState extends State<_LoginDocForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    BoxDecoration _backgroundImage() {
      return BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/background/stethoscope2.jpg',
              )));
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
          color: Colors.white.withOpacity(0.0),
          elevation: 0.0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
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
            ),
          ),
        ),
      );
    }

    Widget _passwordPrompt() {
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
            onPressed: () {},
            child: Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: defaultFont),
            ),
          ),
        ),
      );
    }

    Widget _divider() {
      return Divider(color: accent);
    }

    Widget _forgotpassword() {
      return InkWell(
          onTap: () {},
          child: Text(
            "Forgot Password",
            style: TextStyle(
                color: dark,
                decoration: TextDecoration.underline,
                fontFamily: defaultFont),
          ));
    }

    Widget _createaccountBtn() {
      return SizedBox(
        width: double.infinity,
        child: Material(
          color: accent,
          borderRadius: BorderRadius.circular(15.0),
          child: FlatButton(
            onPressed: () {},
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
      return SingleChildScrollView(
        reverse: true,
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: _backgroundImage(),
            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Form(
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
                _divider(),
                _createaccountBtn()
              ]),
            )),
      );
    } else {
      return Container(
          color: Color(0XFFE3E1E2),
          child: SingleChildScrollView(
            reverse: true,
            child: Container(
              padding: EdgeInsets.only(top: 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: _backgroundImage(),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[_createaccountBtn()],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10.0,
                  //   height: MediaQuery.of(context).size.height,
                  //   child: Container(
                  //     color: Colors.green,
                  //     child: Text("h"),
                  //   ),
                  // ),
                  Expanded(
                    flex: 3,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
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
                            _forgotpassword()
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
