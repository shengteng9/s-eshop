import 'package:flutter/material.dart';
import '../../components/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Text('body'),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}