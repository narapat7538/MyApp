import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/app_route.dart';


class RegisterPages extends StatefulWidget {
  @override
  _RegisterPagesState createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('สร้างบัญชีผู้ใช้'),
      ),
      backgroundColor: Color(0xFFFF5F5DC),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 80),
              Container(
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 50,
                        fontFamily: 'Pacifico'),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15.0,
                                offset: Offset(0, 10))
                          ]),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Color(0xFFF6495ED),
                            ),
                            border: InputBorder.none,
                            hintText: "\tชื่อผู้ใช้งาน",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15.0,
                                offset: Offset(0, 10))
                          ]),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.password,
                              color: Color(0xFFF6495ED),
                            ),
                            border: InputBorder.none,
                            hintText: "\tรหัสผ่าน",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15.0,
                                offset: Offset(0, 10))
                          ]),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.password,
                              color: Color(0xFFF6495ED),
                            ),
                            border: InputBorder.none,
                            hintText: "\tยืนยันรหัสผ่าน",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),

                    //SizedBox(height: 5,),
                  ],
                ),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                  child: Text('ลงทะเบียน',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF6495ED),
                      padding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.loginRoute);
                  }),
              ElevatedButton(
                  child: Text('เข้าสู่ระบบ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF6495ED),
                      padding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.loginRoute);
                  }),
              ElevatedButton(
                  child: Text('ยกเลิก',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF6495ED),
                      padding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 135),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.loginRoute);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
