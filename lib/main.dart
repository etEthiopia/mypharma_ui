import 'package:chat_app/components/drawers.dart';
import 'package:chat_app/screens/auth/forgotpassword.dart';
import 'package:chat_app/screens/auth/joinus.dart';
import 'package:chat_app/screens/auth/login.dart';
import 'package:chat_app/screens/auth/login_doc.dart';
import 'package:chat_app/screens/auth/login_main.dart';
import 'package:chat_app/screens/auth/registerorg.dart';
import 'package:chat_app/screens/auth/registerphy.dart';
import 'package:chat_app/screens/news/feed.dart';
import 'package:chat_app/screens/news/new_products.dart';
import 'package:chat_app/screens/page/companypage.dart';
import 'package:chat_app/screens/plus/showarticle.dart';
import 'package:chat_app/screens/plus/showproduct.dart';
import 'package:chat_app/screens/search/choose_org.dart';
import 'package:chat_app/screens/search/search_article.dart';
import 'package:chat_app/screens/search/search_main.dart';
import 'package:chat_app/screens/search/search_product.dart';
import 'package:chat_app/screens/shop/cart_items.dart';
import 'package:chat_app/screens/shop/my_cart.dart';
import 'package:chat_app/screens/shop/product_size.dart';
import 'package:chat_app/screens/shop/sent_orders.dart';
import 'package:chat_app/theme/colors.dart';
import 'package:chat_app/theme/font.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyPh',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => MyHomePage(
                title: 'UI',
              ),
          '/login': (context) => Login(),
          '/logindoc': (context) => LoginDoc(),
          '/joinus': (context) => JoinUs(),
          '/loginmain': (context) => LoginMain(),
          '/forgotpassword': (context) => ForgotPassword(),
          '/registerorg': (context) => RegisterOrg(),
          '/registerphy': (context) => RegisterPhy(),
          '/feed': (context) => Feed(),
          '/newproducts': (context) => NewProducts(),
          '/showproduct': (context) => ShowProduct(),
          '/showarticle': (context) => ShowArticle(),
          '/companypage': (context) => CompanyPage(),
          '/choose_org': (context) => ChooseOrg(),
          '/search_product': (context) => Search(),
          '/search_article': (context) => SearchArticle(),
          '/search': (context) => SearchMain(),
          '/package': (context) => ProductSize(),
          '/cart': (context) => MyCart(),
          '/cart_list': (context) => MyCartList(),
          '/sent_orders': (context) => SentOrders(),
        }
        //home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _sizedbox() {
    return SizedBox(
      height: 10.0,
    );
  }

  Widget _menuBtn(String title, String route) {
    return SizedBox(
      width: double.infinity,
      child: Material(
        color: primary,
        borderRadius: BorderRadius.circular(15.0),
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/$route');
          },
          child: Text(
            "$title",
            style: TextStyle(color: Colors.white, fontFamily: defaultFont),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(widget.title),
      ),
      drawer: pharmacyDrawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 100,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                            height: 50,
                            color: dark,
                            child: Center(
                              child: Text(
                                "dark",
                                style: TextStyle(
                                    fontFamily: defaultFont,
                                    color: Colors.white),
                              ),
                            )),
                        Container(
                            height: 50,
                            color: darksecond,
                            child: Center(
                              child: Text(
                                "darksecond",
                                style: TextStyle(
                                    fontFamily: defaultFont,
                                    color: Colors.white),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                            height: 50,
                            color: light,
                            child: Center(
                              child: Text(
                                "light",
                                style: TextStyle(
                                    fontFamily: defaultFont,
                                    color: Colors.white),
                              ),
                            )),
                        Container(
                            height: 50,
                            color: primary,
                            child: Center(
                              child: Text(
                                "primary",
                                style: TextStyle(
                                    fontFamily: defaultFont,
                                    color: Colors.white),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                            height: 50,
                            color: accent,
                            child: Center(
                              child: Text(
                                "accent",
                                style: TextStyle(fontFamily: defaultFont),
                              ),
                            )),
                        Container(
                            height: 50,
                            color: extralight,
                            child: Center(
                              child: Text(
                                "extralight",
                                style: TextStyle(fontFamily: defaultFont),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    _sizedbox(),
                    _menuBtn("Login", "login"),
                    _sizedbox(),
                    // _menuBtn("Login Doc", "logindoc"),
                    // _sizedbox(),
                    _menuBtn("Join Us", "joinus"),
                    _sizedbox(),
                    // _menuBtn("Login Main", "loginmain"),
                    // _sizedbox(),
                    _menuBtn("Forgot Password", "forgotpassword"),
                    _sizedbox(),
                    // _menuBtn("Register Org", "registerorg"),
                    // _sizedbox(),
                    _menuBtn("Register Phy", "registerphy"),
                    _sizedbox(),
                    _menuBtn("Feed", "feed"),
                    _sizedbox(),
                    _menuBtn("New Products", "newproducts"),
                    _sizedbox(),
                    _menuBtn("Show Product", "showproduct"),
                    _sizedbox(),
                    _menuBtn("Show Article", "showarticle"),
                    _sizedbox(),
                    _menuBtn("Company Page", "companypage"),
                    _sizedbox(),
                    _menuBtn("Choose Org", "choose_org"),
                    _sizedbox(),
                    _menuBtn("Search Filter", "search_product"),
                    _sizedbox(),
                    _menuBtn("Search Article", "search_article"),
                    _sizedbox(),
                    _menuBtn("Search", "search"),
                    _sizedbox(),
                    _menuBtn("Package", "package"),
                    // _sizedbox(),
                    // _menuBtn("Cart", "cart"),
                    _sizedbox(),
                    _menuBtn("My Cart", "cart_list"),
                    _sizedbox(),
                    _menuBtn("Sent Orders", "sent_orders")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
