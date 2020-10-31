import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String _orgController = "";
  int _selectedOrg = 0;
  List<String> _orgsList = [
    "Kalkidan Importer",
    "Mulugeta Ltd PLC.",
    "Mekua and Friends PLC.",
    "Bigga PLC.",
  ];

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  int _current = 0;

  List<Widget> imageSliders;

  List<DropdownMenuItem<dynamic>> professions = [
    DropdownMenuItem(
      value: 0,
      child: Text(
        "Kalkidan Importer",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text(
        "Mulugeta Ltd PLC.",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
    DropdownMenuItem(
      value: 2,
      child: Text(
        "Mekua and Friends PLC.",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
    DropdownMenuItem(
      value: 3,
      child: Text(
        "Bigga PLC.",
        style: TextStyle(fontWeight: FontWeight.bold, color: darksecond),
      ),
    ),
  ];

  Widget _image() {
    return SizedBox(
      width: 150,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/product/meds.jpg',
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.white70,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _report(),
                    _share(),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _thumbsup() {
    return IconButton(
      icon: Icon(
        Icons.thumb_up,
        color: extralight,
      ),
      onPressed: () {},
    );
  }

  Widget _thumbsupno() {
    return Text("15",
        style: TextStyle(
            color: extralight, fontSize: 15, fontFamily: defaultFont));
  }

  Widget _report() {
    return IconButton(
      icon: Icon(
        Icons.error,
        color: darksecond,
      ),
      onPressed: () {},
    );
  }

  Widget _share() {
    return IconButton(
      icon: Icon(
        Icons.share,
        color: dark,
      ),
      onPressed: () {},
    );
  }

  Widget _porname() {
    return Text("Zytrec - Rapid Acting",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontFamily: defaultFont));
  }

  Widget _category() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Category",
            style: TextStyle(
                color: extralight, fontSize: 10, fontFamily: defaultFont)),
        Text("Pill",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontFamily: defaultFont))
      ],
    );
  }

  Widget _country() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Country",
            style: TextStyle(
                color: extralight, fontSize: 10, fontFamily: defaultFont)),
        Text("Switzerland",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontFamily: defaultFont))
      ],
    );
  }

  Widget _org() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: _orgPrompt());
  }

  Widget _titlebar(por) {
    if (por) {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _porname(),
              SizedBox(
                height: 5,
              ),
              _category(),
              _country(),
            ],
          ),
        ),
      );
    }
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _category(),
            _country(),
          ],
        ),
      ),
    );
  }

  Widget _details(por) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                por == true ? Text("") : _org(),
                Text("Product Name",
                    style: TextStyle(
                        color: light, fontSize: 10, fontFamily: defaultFont)),
                Text(
                    "Zytrec - Rapid Acting [Relieves hayfever and allergy symptoms]",
                    style: TextStyle(
                        color: darksecond,
                        fontSize: 20,
                        fontFamily: defaultFont))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Generic Name",
                    style: TextStyle(
                        color: light, fontSize: 10, fontFamily: defaultFont)),
                Text("Allergy Reliever",
                    style: TextStyle(
                        color: darksecond,
                        fontSize: 15,
                        fontFamily: defaultFont))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Batch Number",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    Text("9310059010389",
                        style: TextStyle(
                            color: darksecond,
                            fontSize: 15,
                            fontFamily: defaultFont))
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text("Single's Price",
                          style: TextStyle(
                              color: light,
                              fontSize: 10,
                              fontFamily: defaultFont)),
                      Text("140 ETB",
                          style: TextStyle(
                              color: darksecond,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: defaultFont))
                    ],
                  ),
                ),
              ],
            ),
            Column(children: [
              CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Manufacured Date",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    Text("01/02/2019",
                        style: TextStyle(
                            color: darksecond,
                            fontSize: 15,
                            fontFamily: defaultFont))
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Expire Date",
                        style: TextStyle(
                            color: light,
                            fontSize: 10,
                            fontFamily: defaultFont)),
                    Text("01/02/2022",
                        style: TextStyle(
                            color: darksecond,
                            fontSize: 15,
                            fontFamily: defaultFont))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Manufacurer Company",
                    style: TextStyle(
                        color: light, fontSize: 10, fontFamily: defaultFont)),
                Text("Johnson & Johnson Pacific",
                    style: TextStyle(
                        color: darksecond,
                        fontSize: 15,
                        fontFamily: defaultFont))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Description",
                    style: TextStyle(
                        color: light, fontSize: 10, fontFamily: defaultFont)),
                Container(
                  height: 200,
                  color: Colors.grey[100],
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: SingleChildScrollView(
                    child: Text(
                        "Springannotationbasedconﬁgurationoffers severalannotations, like@Controller, @Service, @Repositoryandso on. Theyall inherit from @Component annotation as well. Although it is possible to create beans with only using @Component annotation, you will be missing some functionality which becomes available on your beans when they are deﬁned with appropriate stereo type annotations. For example, @Repository annotation helps handling of Hibernate or JPA speciﬁc exceptions and converting them into Spring speciﬁc DataAccessExceptions. @Controller annotation signals to DispatcherServlet that, it contains handler methods with @RequestMapping annotation. Although @Service annotation doesn’t make all of the public methods transactional in a service bean - like session beans in EJBs, it is just a matter of deﬁning an annotation which brings those @Service and @Transactional annotations together, or write an aspect to achieve similar behavior.",
                        style: TextStyle(
                            color: darksecond,
                            fontSize: 15,
                            fontFamily: defaultFont)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  child: Icon(
                    Icons.edit,
                    color: dark,
                    size: 10,
                  ),
                ),
                InkWell(
                  child: SizedBox(
                    width: 5,
                  ),
                ),
                InkWell(
                    child: Text(
                  "Contribute on the Content",
                  style: TextStyle(
                      fontSize: 10, color: dark, fontFamily: defaultFont),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _orgs(por) {
    Color c;
    Color bc;
    double width;
    if (por == true) {
      bc = primary;
      c = Colors.white;
      width = double.infinity;
    } else {
      bc = Colors.white;
      c = primary;
      width = 150;
    }

    return Container(
      width: width,
      padding: EdgeInsets.all(10),
      child: SizedBox(
        child: Material(
          color: bc,
          borderRadius: BorderRadius.circular(15.0),
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "Buying Options",
              style: TextStyle(color: c, fontFamily: defaultFont),
            ),
          ),
        ),
      ),
    );
  }

  Widget _orgText() {
    return Text(
      "Provider",
      style: TextStyle(color: dark, fontSize: 10, fontFamily: defaultFont),
    );
  }

  Widget _orgPrompt() {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _orgText(),
          DropdownButtonFormField(
            style: TextStyle(color: dark, fontFamily: defaultFont),
            items: professions,
            hint: Text("Provider"),
            value: _selectedOrg,
            onChanged: (value) {
              setState(() {
                _selectedOrg = value;
                _orgController = _orgsList[_selectedOrg];
              });
            },
            isExpanded: true,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${imgList.indexOf(item)} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    if (orientation == Orientation.portrait) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        _image(),
                        _titlebar(true),
                      ],
                    ),
                  ),
                  _org(),
                ],
              ),
            ),
            _details(true),
            _orgs(true),
          ],
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _image(),
                  _titlebar(false),
                  _orgs(false),
                ],
              ),
            ),
            _details(false),
          ],
        ),
      );
    }
  }
}
