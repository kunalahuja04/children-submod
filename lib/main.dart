import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogaApp/icons/yoga_app_icons_icons.dart';
import 'package:yogaApp/next_page.dart';
import 'package:yogaApp/widgets/bottom_navigation.dart';
import 'package:yogaApp/widgets/feature_card.dart';
import 'package:yogaApp/widgets/yoga_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NextPagee(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle commonStyle = TextStyle(
      color: Colors.grey,
      fontSize: 14.0,
    );
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: Color(0xFFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'For You',
                    style: GoogleFonts.notoSerif(
                      textStyle: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                    ),
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.menu,
                      size: 34.0,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image.asset(
                      'lib/assets/illYoga.jpg',
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  right: 20.0,
                  bottom: -30.0,
                  child: FeatureCard(),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 60.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text(
                      'Styles',
                      style: TextStyle(
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                  Text(
                    'Classes',
                    style: commonStyle,
                  ),
                  Text(
                    'Teachers',
                    style: commonStyle,
                  ),
                ],
              ),
            ),
            YogaCard(
              cardImage: 'lib/assets/hatha.png',
              cardTitle: 'Hatha Yoga',
              cardDesc: 'Explore Your inner landscape through yoga poses.',
            ),
            YogaCard(
              cardImage: 'lib/assets/yin.png',
              cardTitle: 'Yin Yoga',
              cardDesc: 'Yin Yoga style is a chance to find balance for the body and mind.',
            ),
          ],
        ),
      ),
    );
  }
}
