import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'trading_module.dart';
import 'header_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TradingModule(),
        ],
      ),
    );
  }
}