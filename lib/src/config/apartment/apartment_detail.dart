

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:mini_pro/src/config/apartment/apartment_model.dart';
import 'package:mini_pro/src/config/api.dart';

import 'package:share/share.dart';

class ApartmentDetailPage extends StatefulWidget {
  @override
  _ApartmentDetailPageState createState() => _ApartmentDetailPageState();
}

class _ApartmentDetailPageState extends State<ApartmentDetailPage> {
  Apartment _apartment;

  @override
  void initState() {
    _apartment = Apartment();
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
    if (arguments is Apartment) {
      _apartment = arguments;
    }
    {
      return Scaffold(
        appBar: AppBar(
          title: Text(_apartment.apmName),
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
                      image: NetworkImage(API.APARTMENT_IMAGE + _apartment.apmImage),
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
                Text(_apartment.apmDetail),
                Text(_apartment.apmPhone),

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
