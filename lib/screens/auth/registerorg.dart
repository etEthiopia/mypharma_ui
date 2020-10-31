import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class RegisterOrg extends StatefulWidget {
  @override
  _RegisterOrgState createState() => _RegisterOrgState();
}

class _RegisterOrgState extends State<RegisterOrg> {
  final _key = GlobalKey<FormState>();
  int page = 1;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _autoValidate = false;
  final TextEditingController _textController = TextEditingController();

  Widget _logoSection() {
    return Container(
        margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
        alignment: Alignment.topCenter,
        child: Image.asset(
          "assets/images/logo/logo50.png",
          width: 50.0,
        ));
  }

  Widget _registerText() {
    return Text(
      "Register an Organization",
      style: TextStyle(color: dark, fontSize: 20, fontFamily: defaultFont),
    );
  }

  Widget _orgnamePrompt() {
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
                hintText: "Org Name",
                icon: Icon(
                  Icons.home,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Org Name cannot be empty";
              } else if (value.length > 25) {
                return "Org Name length must be < 25";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _ownernamePrompt() {
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
                hintText: "Owner Name",
                icon: Icon(
                  Icons.person,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Owner Name cannot be empty";
              } else if (value.length > 25) {
                return "Owner Name length must be < 25";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _tinPrompt() {
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
                hintText: "Tin",
                icon: Icon(
                  Icons.vpn_key,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Tin cannot be empty";
              } else if (value.length > 25) {
                return "Tin length must be < 25";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _phonePrompt() {
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
                hintText: "Org Phone",
                icon: Icon(
                  Icons.phone,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.phone,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Phone cannot be empty";
              } else if (value.length > 25) {
                return "Phone length must be < 12";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _altphonePrompt() {
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
                hintText: "Alternative Phone",
                icon: Icon(
                  Icons.phone,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.phone,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Phone cannot be empty";
              } else if (value.length > 25) {
                return "Phone length must be < 12";
              }
              return null;
            },
          ),
        ),
      ),
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

  Widget _websitePrompt() {
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
                hintText: "Organization Website",
                icon: Icon(
                  Icons.vpn_key,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.url,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Website cannot be empty";
              } else if (value.length > 25) {
                return "Website length must be < 25";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _smallsizedBox() {
    return SizedBox(height: 10);
  }

  Widget _xsmallsizedBox() {
    return SizedBox(height: 5);
  }

  Widget _nextBtn() {
    return SizedBox(
      child: Material(
        elevation: 1,
        shadowColor: light,
        color: dark,
        borderRadius: BorderRadius.circular(15.0),
        child: FlatButton(
          onPressed: () {
            if (page <= 2) {
              setState(() {
                page += 1;
              });
            }
          },
          child: Text(
            page < 3 ? "Next" : "Submit",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: defaultFont),
          ),
        ),
      ),
    );
  }

  Widget _cancelBtn() {
    return SizedBox(
      child: Material(
        elevation: 1,
        shadowColor: light,
        color: primary,
        borderRadius: BorderRadius.circular(15.0),
        child: FlatButton(
          onPressed: () {
            if (page > 1) {
              setState(() {
                page = page - 1;
              });
            }
          },
          child: Text(
            page == 1 ? "Cancel" : "Back",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: defaultFont),
          ),
        ),
      ),
    );
  }

  Widget _firstpage(bool por) {
    if (por) {
      return Column(
        children: <Widget>[
          _logoSection(),
          _smallsizedBox(),
          _registerText(),
          _smallsizedBox(),
          _orgnamePrompt(),
          _smallsizedBox(),
          _ownernamePrompt(),
          _smallsizedBox(),
          _tinPrompt(),
          _smallsizedBox(),
          _phonePrompt(),
          _smallsizedBox(),
          _altphonePrompt(),
          _smallsizedBox(),
          _emailPrompt(),
          _smallsizedBox(),
          _websitePrompt(),
          _smallsizedBox(),
        ],
      );
    }
    return Column(
      children: <Widget>[
        _registerText(),
        _xsmallsizedBox(),
        _orgnamePrompt(),
        _xsmallsizedBox(),
        Row(
          children: <Widget>[
            Expanded(child: _ownernamePrompt()),
            Expanded(child: _tinPrompt()),
          ],
        ),
        _xsmallsizedBox(),
        Row(
          children: <Widget>[
            Expanded(child: _phonePrompt()),
            Expanded(
              child: _altphonePrompt(),
            )
          ],
        ),
        _xsmallsizedBox(),
        Row(
          children: <Widget>[
            Expanded(child: _emailPrompt()),
            Expanded(child: _websitePrompt()),
          ],
        ),
      ],
    );
  }

  Widget _secondpage(bool por) {
    if (por) {
      return Column(children: <Widget>[
        _logoSection(),
        _smallsizedBox(),
        _registerText(),
        _smallsizedBox(),
        _addressPrompt(),
        _smallsizedBox(),
        _locationPrompt(),
        _smallsizedBox(),
        _orgsloganPrompt(),
        _smallsizedBox(),
        _aboutPrompt(),
        _smallsizedBox(),
        _addpicBtn(),
      ]);
    }
    return Column(children: <Widget>[
      _registerText(),
      _xsmallsizedBox(),
      Row(
        children: <Widget>[
          Expanded(child: _addressPrompt()),
          Expanded(child: _aboutPrompt()),
        ],
      ),
      _xsmallsizedBox(),
      Row(
        children: <Widget>[
          Expanded(child: _locationPrompt()),
          Expanded(child: _orgsloganPrompt()),
        ],
      ),
      _xsmallsizedBox(),
      _addpicBtn(),
    ]);
  }

  Widget _thirdpage(por) {
    if (por) {
      return Column(children: <Widget>[
        _logoSection(),
        _smallsizedBox(),
        _registerText(),
        _smallsizedBox(),
        _repnamePrompt(),
        _smallsizedBox(),
        _repemailPrompt(),
        _smallsizedBox(),
        _passwordPrompt(),
        _smallsizedBox(),
        _cpasswordPrompt()
      ]);
    }
    return Column(children: <Widget>[
      _registerText(),
      _xsmallsizedBox(),
      Row(
        children: <Widget>[
          Expanded(child: _repnamePrompt()),
          Expanded(child: _repemailPrompt()),
        ],
      ),
      _xsmallsizedBox(),
      Row(
        children: <Widget>[
          Expanded(child: _passwordPrompt()),
          Expanded(child: _cpasswordPrompt()),
        ],
      ),
    ]);
  }

  Widget _pager(bool por) {
    switch (page) {
      case 1:
        return _firstpage(por);
      case 2:
        return _secondpage(por);
      case 3:
        return _thirdpage(por);
      default:
        return _firstpage(por);
    }
  }

  Widget _addressPrompt() {
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
            minLines: 2,
            maxLines: 3,
            decoration: InputDecoration(
                hintText: "Address",
                icon: Icon(
                  Icons.streetview,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Address cannot be empty";
              } else if (value.length > 100) {
                return "Address length must be < 100";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _locationPrompt() {
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
                hintText: "Absolute Location",
                icon: Icon(
                  Icons.add_location,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Location cannot be empty";
              } else if (value.length > 100) {
                return "Location length must be < 100";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _orgsloganPrompt() {
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
                hintText: "Slogan",
                icon: Icon(
                  Icons.filter_frames,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Slogan cannot be empty";
              } else if (value.length > 50) {
                return "Slogan length must be < 50";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _aboutPrompt() {
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
            minLines: 2,
            maxLines: 3,
            decoration: InputDecoration(
                hintText: "About the Organization",
                icon: Icon(
                  Icons.description,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Address cannot be empty";
              } else if (value.length > 100) {
                return "Address length must be < 100";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _addpicBtn() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Material(
            color: light,
            borderRadius: BorderRadius.circular(15.0),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Add Picture",
                style: TextStyle(color: Colors.white, fontFamily: defaultFont),
              ),
            ),
          ),
        ));
  }

  Widget _repnamePrompt() {
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
                hintText: "Representative Name",
                icon: Icon(
                  Icons.person,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _textController,
            validator: (value) {
              if (value.isEmpty) {
                return "Representative Name cannot be empty";
              } else if (value.length > 25) {
                return "Representative Name length must be < 25";
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _repemailPrompt() {
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
                hintText: "Representative Email",
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
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Representative Password",
                icon: Icon(
                  Icons.lock,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _emailController,
            validator: (value) {
              if (value.isEmpty) {
                if (value.isEmpty) {
                  return "The password cannot be empty";
                } else if (value.length < 6) {
                  return "The password length must be at least six";
                }
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _cpasswordPrompt() {
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
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Confirm Password",
                icon: Icon(
                  Icons.lock,
                  color: dark,
                ),
                border: InputBorder.none,
                isDense: true),
            keyboardType: TextInputType.text,
            controller: _emailController,
            validator: (value) {
              // if (value.isEmpty) {
              //     return "please confirm password";
              //   } else if (value != _passwordController.text) {
              //     return "passwords doesn't match";
              //   }
              //   return null;
              if (value.isEmpty) {
                if (value.isEmpty) {
                  return "The password cannot be empty";
                } else if (value.length < 6) {
                  return "The password length must be at least six";
                }
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
    Orientation orientation = MediaQuery.of(context).orientation;
    bool por;
    if (orientation == Orientation.portrait) {
      por = true;
    } else {
      por = false;
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                    key: _key, autovalidate: _autoValidate, child: _pager(por)),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(child: _cancelBtn()),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(child: _nextBtn())
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
