import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      margin: EdgeInsets.all(18.0),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          top: 10.0,
          bottom: 15.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'FEATURED',
                style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'Hatha Yoga: Beginner',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'A well-suited class for your',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
