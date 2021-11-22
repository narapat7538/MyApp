

import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/addroom/add_condo_page.dart';
import 'package:mini_pro/src/config/addroom/add_page.dart';
import 'package:mini_pro/src/config/apartment/apartment_detail.dart';
import 'package:mini_pro/src/config/apartment/apartment_page.dart';
import 'package:mini_pro/src/config/condo/condo_detail.dart';
import 'package:mini_pro/src/config/condo/condo_page.dart';
import 'package:mini_pro/src/config/dormitory/dormitory_detail.dart';
import 'package:mini_pro/src/config/dormitory/dormitory_page.dart';
import 'package:mini_pro/src/config/mansion/mansion_detail.dart';
import 'package:mini_pro/src/config/mansion/mansion_page.dart';
import 'package:mini_pro/src/config/register/register.dart';
import 'package:mini_pro/src/pages/home/home_page.dart';
import 'package:mini_pro/src/pages/info/info_page.dart';
import 'package:mini_pro/src/pages/login/login_page.dart';
import 'package:mini_pro/src/typemodel/type_pages.dart';

class AppRoute{
  static const homeRoute = 'home';
  static const infoRoute = 'info';
  static const loginRoute = 'login';
  static const RegisterRoute = 'register';
  static const typeRoute = 'type';
  static const condoRoute = 'Condo';
  static const apartmentRoute = 'Apartment';
  static const dormitoryRoute = 'Dormitory';
  static const mansionRout = 'Mansion';
  static const apartmentdetailPagesRout = 'apartmentdetail';
  static const condodetailRout = 'condodetail';
  static const dormitorydetailRout = 'dormitorydetail';
  static const mansiondetailRout = 'mansiondetail';
  static const addRout = 'Add';
  static const addcondoRout = 'Addcondo';






  final _route = <String, WidgetBuilder>{
    homeRoute: (context) => HomePage(),
    infoRoute: (context) => InfoPage(),
    loginRoute: (context) => LoginPage(),
    RegisterRoute: (context) => RegisterPages(),
    typeRoute: (context) => TypePages(),
    condoRoute: (context) => CondoPages(),
    apartmentRoute: (context) => apartmentPages(),
    dormitoryRoute: (context) => DormitoryPages(),
    mansionRout: (context) => mansionPages(),
    apartmentdetailPagesRout: (context) => ApartmentDetailPage(),
    condodetailRout: (context) => CondoDetailPage(),
    dormitorydetailRout: (context) => DormitoryDetailPage(),
    mansiondetailRout: (context) => MansionDetailPage(),
    addRout: (context) => AddPages(),
    addcondoRout: (context) => AddCondoPage(),

  };

  get getAll => _route;
}//end class