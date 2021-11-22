import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/app_route.dart';


class AddPages extends StatefulWidget {
  @override
  _AddPagesState createState() => _AddPagesState();
}

class _AddPagesState extends State<AddPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rental room type'),
      ),
      backgroundColor: Color(0xFFFF5F5DC),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.addcondoRout);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/condo.png'), scale: 1),
                    ),
                  ),
                ),
                Text(
                  'Condominium',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.apartmentRoute);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/apartman.png'), scale: 1),
                    ),
                  ),
                ),
                Text(
                  'Apartment',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.mansionRout);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/mantion.png'), scale: 1),
                    ),
                  ),
                ),
                Text(
                  'Mansion',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.dormitoryRoute);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/dormitory.png'), scale: 1),
                    ),
                  ),
                ),
                Text(
                  'Dormitory',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
