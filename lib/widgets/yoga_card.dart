import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YogaCard extends StatelessWidget {
  final String cardTitle;
  final String cardDesc;
  final String cardImage;

  const YogaCard({
    Key key,
    this.cardTitle,
    this.cardDesc,
    this.cardImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 7.0,
                ),
                padding: EdgeInsets.symmetric(horizontal: 3.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    cardImage,
                    height: 70.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    cardTitle,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    cardDesc,
                    overflow: TextOverflow.clip,
                    maxLines: 3,
                    style: TextStyle(
                      wordSpacing: 1,
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
