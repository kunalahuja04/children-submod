import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextPagee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      bottomNavigationBar: BottomNavigationNextPage(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'lib/assets/illYoga.jpg',
                height: 400,
                alignment: Alignment.topCenter,
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.chevron_left,
                    size: 35.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.2,
                ),
                child: CustomContainer(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Text(
              'Hatha Yoga Class ' + '         ' + ' for Beginners',
              style: GoogleFonts.notoSerif(
                textStyle: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: ExactAssetImage(
                          'lib/assets/guest1.jpeg',
                        ),
                      ),
                    ),
                    Positioned(
                      left: 48.0,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: ExactAssetImage(
                            'lib/assets/guest2.jpeg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Some Celebrity' + ' ',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'and' + ' ',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          'Cute Girl',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Hatha, Meditiaion, Breathwork',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Text(
              'Hatha, Meditaion, Breathwork with some celebrity Hatha, Meditaion, Breathwork with Cute Girl Hatha, Meditaion, Breathwork with Cute Girl',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              'Read More',
              style: TextStyle(
                color: Color(0xFF68C6A0),
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 75.0,
          ),
        ],
      ),
    );
  }
}

class BottomNavigationNextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black26,
        ),
      ),
      height: 80.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '24' + ' ' + 'Lessons',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '3 Weeks' + ' . ' + '1-2 Level',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          FlatButton(
            padding: const EdgeInsets.only(
              left: 18,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            color: Color(0xFFCB83E6),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.purpleAccent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
