import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../provider/current_index_provider.dart';


class MyBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    int _currentIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: ((index){
        context.read<CurrentIndexProvider>().changeIndex(index);
      }),
      items: [
        BottomNavigationBarItem(
          label: '闲鱼',
          icon: _currentIndex == 0
            ? Image.asset(
              'assets/images/home_actived.png',
              width: 32.0,
              height: 28.0,
            ) : Image.asset(
                'assets/images/home.png',
                width: 32.0,
                height: 28.0,
              )
        ),
        BottomNavigationBarItem(
          label: '我的',
          icon: _currentIndex == 1
            ? Image.asset(
            'assets/images/my_actived.png',
            width: 32.0,
            height: 32.0,
          ): Image.asset(
            'assets/images/my.png',
            width: 32.0,
            height: 32.0,
          )
        )
      ],
    );
  }
}

