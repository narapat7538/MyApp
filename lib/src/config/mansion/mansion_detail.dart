

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:mini_pro/src/config/api.dart';
import 'package:mini_pro/src/config/dormitory/dormitory_model.dart';
import 'package:mini_pro/src/config/mansion/mansion_model.dart';



class MansionDetailPage extends StatefulWidget {
  @override
  _MansionDetailPageState createState() => _MansionDetailPageState();
}

class _MansionDetailPageState extends State<MansionDetailPage> {
  Mansion _man;

  @override
  void initState() {
    _man = Mansion();
    super.initState();
  }
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    _speak() async{
      print(await flutterTts.getLanguages);
      // await flutterTts.speak(_apartmentModel.);
    }
    _stop() async{
      print(await flutterTts.getLanguages);
      await flutterTts.stop();
    }

    Object arguments = ModalRoute.of(context).settings.arguments;
    if (arguments is Mansion) {
      _man = arguments;
    }
    {
      return Scaffold(
        appBar: AppBar(
          title: Text(_man.mansionName),
        ),
        body: SingleChildScrollView(
          child: Card(
            color: Colors.blueGrey.shade100,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [

                Stack(
                  children: [
                    Ink.image(
                      fit: BoxFit.fill,
                      height: 400,
                      image: NetworkImage(API.MANSION_IMAGE + _man.mansionImage),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // Text('Popularity' + _movieModel.popularity.toString()),



                SizedBox(
                  height: 10,
                ),
                Text(
                  'ข้อมูล',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.deepPurple),
                ),
                SizedBox( height: 10,
                  width: 200,
                  child: Divider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                ),
                Text(_man.mansionDetail),
                Text(_man.mansionPhone),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [

                    IconButton(icon: Icon(Icons.favorite_border, color: Colors.pinkAccent,),),

                  ],
                ),

              ],
            ),



          ),

        ),


      );
    }
  }
}
