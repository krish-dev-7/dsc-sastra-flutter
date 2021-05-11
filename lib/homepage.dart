import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: pc,
      ),
      height: sh(context),
      width: sw(context),
      child: Column(
        children: [
          sph,
          Container(
            height: sh(context) - 110,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data['event_titles'].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: pdc,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 30,
                            offset: Offset(0, 10))
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          data['event_titles'][index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                            color: pc,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
