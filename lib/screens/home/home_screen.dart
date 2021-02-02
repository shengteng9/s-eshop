import 'package:flutter/material.dart';
import '../../components/my_bottom_nav_bar.dart';
import './components/body.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}