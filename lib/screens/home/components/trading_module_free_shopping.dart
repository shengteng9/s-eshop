import 'package:flutter/material.dart';
import 'package:xianyu/constants.dart';

class TradingModuleFreeShopping extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
      child: Column(
        children: <Widget>[
          Text('闲鱼无忧购', style: TextStyle(fontSize: 20.0, color: kPrimaryColor)),
          Text('包真 · 包退 · 包邮', style: TextStyle(fontSize: 14.0, color: freeShoppingColor)),
          Row(
            children: <Widget>[
              Image()
            ],
          )
        ],
      ),
    );
  }
}