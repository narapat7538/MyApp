
import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/app_route.dart';
import 'package:mini_pro/src/config/app_setting.dart';
import 'package:mini_pro/src/pages/home/home_page.dart';
import 'package:mini_pro/src/pages/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Container(color: Colors.white,);
          }else {
            final token = snapshot.data.getString(AppSetting.userNameSetting ?? '') ;
            if (token != null) {
              return HomePage();
            }else {
              return LoginPage();
            }
          }
        },

      ),
      routes: AppRoute().getAll,
    );
  }
}