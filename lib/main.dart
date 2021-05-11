import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'aboutPage.dart';
import 'config.dart';
import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    title: 'DSC SASTRA',
    home: Pages(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/homepage': (BuildContext context) => HomePage(),
      '/aboutPage': (BuildContext context) => AboutPage(),
    },
  ));
}

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

Widget selectedPage = HomePage();

class _PagesState extends State<Pages> {
  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('failed to launch'),
        action: SnackBarAction(
            label: 'back', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://dscsastra.com/';
    try {
      await launch(url);
    } catch (e) {
      _showToast(context);
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pdc,
        title: Text(
          "DSC SASTRA",
          style: GoogleFonts.lato(fontSize: 30, color: pc),
        ),
        centerTitle: true,
      ),
      body: selectedPage,
      drawer: Drawer(
        elevation: 30,
        semanticLabel: "DSC recruitment",
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, pdc.withOpacity(0.9)]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 170,
                    color: pdc,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Demo app DSC",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
                        child: GestureDetector(
                          child: Image.asset('assets/dsclogo.png'),
                          onTap: _launchURL,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlatButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: pdc,
                                    size: 17,
                                  ),
                                  Text(
                                    " Home",
                                    style: TextStyle(color: pdc, fontSize: 17),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                setState(() {
                                  selectedPage = HomePage();
                                });
                                Navigator.pop(context);
                              },
                            ),
                            sph,
                            FlatButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.info,
                                    color: pdc,
                                    size: 17,
                                  ),
                                  Text(
                                    " About ",
                                    style: TextStyle(color: pdc, fontSize: 17),
                                  ),
                                ],
                              ),
                              onPressed: () async {
                                setState(() {
                                  selectedPage = AboutPage();
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      sph,
                    ],
                  ),
                ],
              ),
              Container(
                height: 30,
                color: pdc,
                child: Center(
                  child: Text(
                    "Powered by google developers",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
