import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping/screens/product_detail.dart';
import 'package:shopping/screens/product_overview.dart';
import 'provider/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Colors.deepOrange,
        ),
        home: ProductOverview(),
        routes: {
          ProductDetail.route: (context) => ProductDetail(),
        },
      ),
    );
  }
}
