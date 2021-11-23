import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/api.dart';
import 'package:mini_pro/src/config/app_route.dart';
import 'package:mini_pro/src/config/condo/condo_model.dart';
import 'package:mini_pro/src/config/mansion/mansion_model.dart';
import 'package:mini_pro/src/services/network.dart';




class mansionPages extends StatefulWidget {
  @override
  _mansionPagesState createState() => _mansionPagesState();
}

class _mansionPagesState extends State<mansionPages> {

  Future<CondoModel> _future;
  List countries = [];
  List filteredCountries = [];
  bool isSearching = false;
  void _filterCountries(value) {
    setState(() {
      filteredCountries = countries
          .where((country) =>
          country['name'].toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? Text('Mansion')
            : TextField(
          onChanged: (value) {
            _filterCountries(value);
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white)),
        ),
        actions: <Widget>[
          isSearching
              ? IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              setState(() {
                this.isSearching = false;
                filteredCountries = countries;
              });
            },
          )
              : IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // showSearch(context: context, delegate: Search());

              setState(() {
                this.isSearching = true;
              });
            },
          )
        ],
      ),
      body: Container(
        child: FutureBuilder<MansionModel>(
          future: NetworkService().getAllMansionDio(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.mansions.length,
                itemBuilder: (context, index) {
                  var mansion = snapshot.data.mansions[index];

                  return Container(
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoute.mansiondetailRout,
                            arguments: mansion);
                      },
                      title: Row(
                        children: [
                          SizedBox(
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                API.MANSION_IMAGE + mansion.mansionImage,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    mansion.mansionName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.assignment_outlined),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                bool check = false;
                bool check2 = false;
                bool check3 = false;
                bool check4 = false;
                bool _checkboxValue = false;
                bool _checkboxValue2 = false;
                bool _checkboxValue3 = false;
                bool _checkboxValue4 = false;
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  elevation: 16,
                  child: Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 40),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('น้อยกว่า 3,000 บาท',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Checkbox(
                                      value: check,
                                      onChanged: (bool value) {
                                        setState(() {
                                          check = value;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('3,000 - 4,000 บาท',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Checkbox(
                                      value: check2,
                                      onChanged: (bool value) {
                                        setState(() {
                                          check2 = value;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('4,000 - 5,000 บาท',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Checkbox(
                                      value: check3,
                                      onChanged: (bool value) {
                                        setState(() {
                                          check3 = value;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('มากกว่า 5,000 บาท',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Checkbox(
                                      value: _checkboxValue4,
                                      onChanged: (bool value) {
                                        setState(() {
                                          _checkboxValue4 = value;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
          // // Navigator.pushNamed(context, AppRoute.videoRoute,
          //     arguments: _movieModel.id);
        },
      ),
    );
  }
}
