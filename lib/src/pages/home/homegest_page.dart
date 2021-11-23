import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/app_route.dart';


class HomegestPages extends StatefulWidget {
  @override
  _HomegestPagesState createState() => _HomegestPagesState();
}

class _HomegestPagesState extends State<HomegestPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ButtonBar(
          alignment:MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 70,),
            Image.asset('assets/images/iconcondo.png'),
            SizedBox(height: 100,),
            ElevatedButton(
                child: Text('Welcome',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5252),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoute.hometooRout);
                }),
            SizedBox(height: 5,),
            ElevatedButton(
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5252),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 133),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoute.loginRoute);
                }),

          ],
        ),
      ),

    );


  }
}
