import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/provider/product.dart';

class ProductDetail extends StatelessWidget {
  // final String title;

  static const route = '/product-detail';

  // ProductDetail(
  //   this.title,
  // );

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
