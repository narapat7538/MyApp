import 'package:another_flushbar/flushbar.dart';

import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/app_route.dart';
import 'package:mini_pro/src/config/app_setting.dart';
import 'package:mini_pro/src/services/network.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = false;

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        backgroundColor: Color(0XFFFffd740),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0Xffff7ff00),
                    Color(0Xfffdb36a4),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Image.network(
                    'https://cdn.iconscout.com/icon/free/png-256/condominium-2982825-2477600.png',
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: _usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'username',
                            hintText: 'xxx@gmail.com',
                            icon: Icon(Icons.person),
                          ),
                        ),
                        TextField(
                          controller: _passwordController,
                          obscureText: isHidden,
                          decoration: InputDecoration(
                            labelText: 'password',
                            icon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: isHidden
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onPressed: togglePasswordVisibility,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final username = _usernameController.text;
                            final password = _passwordController.text;
                            print('login with $username $password');
                            final message = await NetworkService()
                                .validateUserLoginDio(username, password);
                            if (message != 'failed') {
                              print('Login success');
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setString(
                                  AppSetting.userNameSetting, username);
                              prefs.setString(
                                  AppSetting.passwordSetting, password);

                              Navigator.pushNamed(context, AppRoute.homeRoute);
                            } else {
                              print('Login failed');
                              Flushbar(
                                title: "Login Failed",
                                titleColor: Colors.red,
                                backgroundColor: Colors.black,
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  size: 30,
                                  color: Colors.red,
                                ),
                                message: "Login Failed, try again!!",
                                duration: Duration(seconds: 5),
                              )..show(context);
                            }
                          },
                          child: Text('LOGIN'),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0XFFFff6d00)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AppRoute.RegisterRoute);
                          },
                          child: Text('SIGN UP'),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0XFFFff6d00)),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}
