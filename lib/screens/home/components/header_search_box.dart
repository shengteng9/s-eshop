import 'package:flutter/material.dart';


import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  void changedHandle (String text) {
    print(text);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 100),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width:1.0, color: Colors.green))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextField(
              onChanged: changedHandle,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0), // 垂直居中
                  prefixIcon: Icon(Icons.search, color: kThemeColor), // prefixIcon
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kThemeColor,width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0)
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide( color: kThemeColor,width: 2),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0)
                        ),
                      ),
                      hintStyle: TextStyle(fontSize: 14, color: kLightPrimaryColor),
                      hintText: "watch",
                      fillColor: Colors.red
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.only(left: 5.0),
            child: Image.asset('assets/images/all.png'),
          )
        ],
      ),
    );
  }
}