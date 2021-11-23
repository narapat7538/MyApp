import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/app_route.dart';


class Menu {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function(BuildContext context) onTap;


  const Menu({
    this.title,
    this.icon,
    this.iconColor = Colors.grey,
    this.onTap,
  });
}


class MenuViewModelToo {
  MenuViewModelToo();


  List<Menu> get items => <Menu>[
    Menu(
      iconColor: Colors.red,
      title: 'ประเภทห้องเช่า',
      icon: Icons.home_work,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.typeRoute);
      },
    ),
    Menu(
      iconColor: Colors.amber,
      title: 'เปรียบเทียบราคาห้องเช่าห้องเช้า',
      icon: Icons.monetization_on,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.roomRout);
      },
    ),
    Menu(
      title: 'Login',
      icon: Icons.login,
      iconColor: Colors.blue,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.loginRoute);
      },
    ),

  ];
}