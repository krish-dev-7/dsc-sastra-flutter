import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'config.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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

  _launchYtURL() async {
    const url = 'https://www.youtube.com/channel/UCx0wFsoFw4zxmr44lyB4KgQ';
    try {
      await launch(url);
    } catch (e) {
      _showToast(context);
      print(e);
    }
  }

  _launchGitURL() async {
    const url = 'https://github.com/dsc-sastra-university';
    try {
      await launch(url);
    } catch (e) {
      _showToast(context);
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sh(context) + 30,
      width: sw(context) + 15,
      child: Center(
        child: Container(
          height: sh(context) - 100,
          width: sw(context),
          color: pc,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                      onTap: _launchURL,
                      child: Image.asset('assets/dsclogo.png')),
                ),
                sph,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Developer Student Clubs is a Community where everyone is welcome. We help students bridge the gap between theory and practice and grow their knowledge by providing a peer-to-peer learning environment , by conducting workshops, study jams and building solutions for local businesses. Developer Student Clubs is a program supported by Google Developers.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlineButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "visit",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: pdc,
                                ),
                              ),
                              Text(
                                " dscsastra.com",
                                style: TextStyle(
                                    color: pdc,
                                    fontSize: 15,
                                    decoration: TextDecoration.underline),
                              )
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45)),
                          splashColor: pdc,
                          borderSide: BorderSide(color: pdc),
                          onPressed: _launchURL),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlineButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Youtube",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: pdc,
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45)),
                          splashColor: pdc,
                          borderSide: BorderSide(color: pdc),
                          onPressed: _launchYtURL),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlineButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Github",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: pdc,
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45)),
                          splashColor: pdc,
                          borderSide: BorderSide(color: pdc),
                          onPressed: _launchGitURL),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
