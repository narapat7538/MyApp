
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


class MenuViewModel {
  MenuViewModel();


  List<Menu> get items => <Menu>[

    Menu(
      iconColor: Colors.green,
      title: 'MY INFO',
      icon: Icons.account_box,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.infoRoute);
        //todo
      },
    ),
    Menu(
      iconColor: Colors.red,
      title: 'ประเภทห้องเช่า',
      icon: Icons.home_work,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.typeRoute);
        //todo
      },
    ),
    Menu(
      iconColor: Colors.amber,
      title: 'เปรียบเทียบราคาห้องเช่าห้องเช้า',
      icon: Icons.monetization_on,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.roomRout);
        //todo
      },
    ),
    Menu(
      iconColor: Colors.blueAccent,
      title: 'เพิ่มห้องเช้า',
      icon: Icons.add_business,
      onTap: (context) {

        Navigator.pushNamed(context, AppRoute.addcondoRout);
      },
    ),
    // Menu(
    //   iconColor: Colors.amber,
    //   title: 'Dashboard',
    //   icon: Icons.dashboard,
    //   onTap: (context) {
    //     //todo
    //   },
    // ),
    // Menu(
    //   iconColor: Colors.green,
    //   title: 'Timeline',
    //   icon: Icons.timeline,
    //   onTap: (context) {
    //     //todo
    //   },
    // ),
    // Menu(
    //   iconColor: Colors.blue,
    //   title: 'Settings',
    //   icon: Icons.settings,
    //   onTap: (context) {
    //     //todo
    //   },
    // ),
    // Menu(
    //   iconColor: Colors.red,
    //   title: 'Upcoming Movie',
    //   icon: Icons.movie_creation,
    //   onTap: (context) {
    //     Navigator.pushNamed(context, AppRoute.upcomingRoute);
    //   },
    // ),
    // Menu(
    //   iconColor: Colors.red,
    //   title: 'Upcoming Movie Search',
    //   icon: Icons.search,
    //   onTap: (context) {
    //     Navigator.pushNamed(context, AppRoute.upcomingsearchRoute);
    //   },
    // ),
  ];
}