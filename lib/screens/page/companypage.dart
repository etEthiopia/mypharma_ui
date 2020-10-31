import 'package:chat_app/components/appbars.dart';
import 'package:chat_app/components/drawers.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

class CompanyPage extends StatefulWidget {
  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  Widget _logoSection() {
    return Container(
        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        alignment: Alignment.topCenter,
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/images/page/mulugetalimited.png'),
        ));
  }

  Widget _sizedBox() {
    return SizedBox(height: 30);
  }

  Widget _smallsizedBox() {
    return SizedBox(height: 10);
  }

  Widget _xsmallsizedBox() {
    return SizedBox(height: 5);
  }

  Widget _xsmallvsizedBox() {
    return SizedBox(width: 5);
  }

  Widget _smallvsizedBox() {
    return SizedBox(width: 20);
  }

  Widget _compnameText() {
    return Text(
      "Mulugeta Medics Ltd.",
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style:
          TextStyle(color: Colors.white, fontSize: 20, fontFamily: defaultFont),
    );
  }

  Widget _star(String type) {
    if (type == "full") {
      return Icon(
        Icons.star,
        color: gold,
      );
    } else if (type == "half") {
      return Icon(
        Icons.star_half,
        color: gold,
      );
    } else {
      return Icon(
        Icons.star_border,
        color: gold,
      );
    }
  }

  Widget _ratingno(int no) {
    return Text(
      "$no ratings submitted",
      style: TextStyle(fontSize: 10, color: extralight),
    );
  }

  Widget _rating() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _star("full"),
              _star("full"),
              _star("full"),
              _star("half"),
              _star("empty"),
            ],
          ),
          _ratingno(34)
        ],
      ),
    );
  }

  Widget _slogan() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "We care about your Health!",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: dark, fontSize: 20, fontFamily: defaultFont),
        ),
      ],
    );
  }

  Widget _about() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Spring annotation based conﬁguration offers several annotations, like@Controller, @Service, @Repositoryandso on. Theyall inherit from @Component annotation as well. ",
          style: TextStyle(
              color: darksecond, fontSize: 15, fontFamily: defaultFont),
        )
      ],
    );
  }

  Widget _location() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/temp/location.jpg',
              ))),
    );
  }

  Widget _address(bool por) {
    if (por) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Address",
              style: TextStyle(
                  color: light, fontSize: 10, fontFamily: defaultFont)),
          Text(
            "Spring annotation based conﬁguration offers several annotations, @Repositoryandso on. ",
            style: TextStyle(
                color: darksecond, fontSize: 15, fontFamily: defaultFont),
          )
        ],
      );
    }
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Address",
                    style: TextStyle(
                        color: light, fontSize: 10, fontFamily: defaultFont)),
                SingleChildScrollView(
                  child: Text(
                    "Spring annotation based conﬁguration offers several annotations, @Repositoryandso on. ",
                    style: TextStyle(
                        color: darksecond,
                        fontSize: 15,
                        fontFamily: defaultFont),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: _location(),
        ),
      ],
    );
  }

  Widget _phone(String number) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.phone,
          size: 15,
          color: primary,
        ),
        _xsmallvsizedBox(),
        Text(number,
            style: TextStyle(
                color: primary, fontSize: 15, fontFamily: defaultFont))
      ],
    );
  }

  Widget _phones(bool por) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: por == true
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(child: _phone("+251937886725")),
        InkWell(child: _phone("+251911312334")),
      ],
    );
  }

  Widget _email() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.email,
          size: 15,
          color: primary,
        ),
        _xsmallvsizedBox(),
        Text("support@mulugetltd.com",
            style: TextStyle(
                color: primary, fontSize: 15, fontFamily: defaultFont))
      ],
    );
  }

  Widget _website() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.link,
          size: 15,
          color: primary,
        ),
        _xsmallvsizedBox(),
        Text("https://mulugetltd.com",
            style: TextStyle(
                color: primary, fontSize: 15, fontFamily: defaultFont))
      ],
    );
  }

  Widget _emailwebsite() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(child: _email()),
        InkWell(child: _website()),
      ],
    );
  }

  Widget _details(bool por) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        child: ListView(children: <Widget>[
          _slogan(),
          _smallsizedBox(),
          _about(),
          _smallsizedBox(),
          _phones(por),
          _xsmallsizedBox(),
          por == true ? _email() : _emailwebsite(),
          _xsmallsizedBox(),
          por == true ? _website() : Text(""),
          _smallsizedBox(),
          _address(por),
          _smallsizedBox(),
          por == true ? _location() : Text(""),

          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text("Product Name",
          //           style: TextStyle(
          //               color: light, fontSize: 10, fontFamily: defaultFont)),
          //       Text(
          //           "Zytrec - Rapid Acting [Relieves hayfever and allergy symptoms]",
          //           style: TextStyle(
          //               color: darksecond,
          //               fontSize: 20,
          //               fontFamily: defaultFont))
          //     ],
          //   ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text("Generic Name",
          //           style: TextStyle(
          //               color: light, fontSize: 10, fontFamily: defaultFont)),
          //       Text("Allergy Reliever",
          //           style: TextStyle(
          //               color: darksecond,
          //               fontSize: 15,
          //               fontFamily: defaultFont))
          //     ],
          //   ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text("Batch Number",
          //           style: TextStyle(
          //               color: light, fontSize: 10, fontFamily: defaultFont)),
          //       Text("9310059010389",
          //           style: TextStyle(
          //               color: darksecond,
          //               fontSize: 15,
          //               fontFamily: defaultFont))
          //     ],
          //   ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Row(
          //     children: <Widget>[
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: <Widget>[
          //           Text("Manufacured Date",
          //               style: TextStyle(
          //                   color: light,
          //                   fontSize: 10,
          //                   fontFamily: defaultFont)),
          //           Text("01/02/2019",
          //               style: TextStyle(
          //                   color: darksecond,
          //                   fontSize: 15,
          //                   fontFamily: defaultFont))
          //         ],
          //       ),
          //       SizedBox(
          //         width: 30,
          //       ),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: <Widget>[
          //           Text("Expire Date",
          //               style: TextStyle(
          //                   color: light,
          //                   fontSize: 10,
          //                   fontFamily: defaultFont)),
          //           Text("01/02/2022",
          //               style: TextStyle(
          //                   color: darksecond,
          //                   fontSize: 15,
          //                   fontFamily: defaultFont))
          //         ],
          //       ),
          //     ],
          //   ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text("Manufacurer Company",
          //           style: TextStyle(
          //               color: light, fontSize: 10, fontFamily: defaultFont)),
          //       Text("Johnson & Johnson Pacific",
          //           style: TextStyle(
          //               color: darksecond,
          //               fontSize: 15,
          //               fontFamily: defaultFont))
          //     ],
          //   ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Text("Description",
          //           style: TextStyle(
          //               color: light, fontSize: 10, fontFamily: defaultFont)),
          //       Container(
          //         height: 200,
          //         color: Colors.grey[200],
          //         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //         child: SingleChildScrollView(
          //           child: Text(
          //               "Spring annotation based conﬁguration offers several annotations, like@Controller, @Service, @Repositoryandso on. Theyall inherit from @Component annotation as well. Although it is possible to create beans with only using @Component annotation, you will be missing some functionality which becomes available on your beans when they are deﬁned with appropriate stereo type annotations. For example, @Repository annotation helps handling of Hibernate or JPA speciﬁc exceptions and converting them into Spring speciﬁc DataAccessExceptions. @Controller annotation signals to DispatcherServlet that, it contains handler methods with @RequestMapping annotation. Although @Service annotation doesn’t make all of the public methods transactional in a service bean - like session beans in EJBs, it is just a matter of deﬁning an annotation which brings those @Service and @Transactional annotations together, or write an aspect to achieve similar behavior.",
          //               style: TextStyle(
          //                   color: darksecond,
          //                   fontSize: 15,
          //                   fontFamily: defaultFont)),
          //         ),
          //       )
          //     ],
          //   ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: <Widget>[
          //       InkWell(
          //         child: Icon(
          //           Icons.edit,
          //           color: dark,
          //           size: 10,
          //         ),
          //       ),
          //       InkWell(
          //         child: SizedBox(
          //           width: 5,
          //         ),
          //       ),
          //       InkWell(
          //           child: Text(
          //         "Contribute on the Content",
          //         style: TextStyle(
          //             fontSize: 10, color: dark, fontFamily: defaultFont),
          //       )),
          //     ],
          //   ),
          // ],
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Scaffold(
        appBar: companyAppBar(title: "Importer"),
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: primary,
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: <Widget>[
                      _logoSection(),
                      _xsmallsizedBox(),
                      _compnameText(),
                      _xsmallsizedBox(),
                      _rating(),
                    ],
                  ),
                ),
                _details(true),
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: companyAppBar(title: "Importer"),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: primary,
                padding: EdgeInsets.only(left: 50, right: 50, bottom: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _logoSection(),
                        _smallvsizedBox(),
                        _compnameText(),
                      ],
                    ),
                    _rating()
                  ],
                ),
              ),
              _details(false)
            ],
          ),
        ),
      ),
    );
  }
}
