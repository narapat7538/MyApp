import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('My Info'),
      ),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/11.jpg'),
              ),
              Text(
                'Narapat Thongpraw',
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: 'Pacifico'),
              ),
              Text(
                'STUDENT',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro'),
              ),
              SizedBox(
                width: 200,
                height: 15,
                child: Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.ac_unit_sharp,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Nickname : DEW ')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_call,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('092-070-7538 ')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.attach_email,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Email : narapat7538@outlook.co.th')
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
