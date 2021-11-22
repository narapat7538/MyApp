
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mini_pro/src/config/app_route.dart';
import 'package:mini_pro/src/config/app_setting.dart';
import 'package:mini_pro/src/widget/menu_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final List<String> images = [
    'https://cdn-images.prod.thinkofliving.com/wp-content/uploads/1/2019/02/20225243/212.jpg',
    'https://propholic.com/wp-content/uploads/2018/05/NKR_20180424_0152.jpg',
    'https://hor2u.com/upload_hotel_img/_upload/_500x500/30114_20210322.jpg',
    'https://cf.bstatic.com/xdata/images/hotel/max1024x768/300319421.jpg?k=c8a020f3887e62ae8f95daa38a9526124dd1838b05ee0fa950ef0efac2cab4ac&o=&hp=1',
    'https://cdn.renthub.in.th/images/uploaded/202005/20200514/apartment_pictures/normal/a9750b006fec2c5440683eab8cc0bfb6.jpg?1589452637',
    'https://cdn.renthub.in.th/images/uploaded/202103/20210313/apartment_pictures/normal/5a55cc6e10a4062c9fc2837c1f5c69fb.jpg?1615622866',
    'https://images.thaiapartment.com/Apartment/11917/saiyud-mansion-bang-khen_ext01.jpg',
  ];
  List<Map<String, String>> imgArray = [
    {
      "img":
      "https://asset.pf.co.th/project-location/facility/6dfc185fa73597c0.jpg",
      "title": "iCondo ศาลายา",
      "description":
      "คอนโดหน้าอยู่ด้านศาลายามีสิ่งอำนวยความสะดวกครบครัน",
      "price": "\$ราคาเริ่มต้น1.39 ล้านบาท ",
      "page": "login"
    },
    {
      "img":
      "https://decor.mthai.com/app/uploads/2017/03/condo_2017_salaya_zelle_front.jpg",
      "title": "Zelle Salaya",
      "description":
      "โครงการติดถนนใหญ่ โครงการดีดีจาก Prinsiriอาคารชุดพัก 7 ชั้น จำนวน 79 ยูนิต/อาคาร",
      "price": "\$ราคาเริ่มต้น 1.59 ล้านบาท",
      "page": "info"
    },
    {
      "img":
      "https://decor.mthai.com/app/uploads/2017/03/elite_salaya_front_03_2017.jpg",
      "title": "Elite Salaya",
      "description":
      "โครงการดีดีโดย บริษัท อิลิท พลัส ดิเวลลอปเม้นท์ จำกัด คอนโดมิเนียม 8 ชั้น จำนวน 2 อาคาร",
      "price": "\$ราคาห้องเริ่มต้น 1.3 ล้านบาท",
      "page": "upcoming"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          // Important: Remove any padding from the ListView.

          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/11.jpg'),
              ),
              accountName: Text('Narapat Thongpraw'),
              accountEmail: Text('624235013@parichat.skru.ac.th'),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
              ),
            ),
            ...MenuViewModel()
                .items
                .map(
                  (e) => ListTile(
                leading: Icon(
                  e.icon,
                  color: e.iconColor,
                ),
                title: Text(e.title),
                onTap: () {
                  e.onTap(context);
                },
              ),
            )
                .toList(),
            Spacer(),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: const Text('Logout'),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove(AppSetting.userNameSetting);
                prefs.remove(AppSetting.passwordSetting);
                // Navigator.pushNamed(context, AppRoute.loginRoute);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'WELCOME',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro',
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),

            CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Container(
                  child: Center(
                      child: Image.network(images[index],
                          fit: BoxFit.cover, width: 1000)),
                );
              },
            ),
            CarouselSlider(
              items: imgArray
                  .map((item) => GestureDetector(
                onTap: (){
                  // Navigator.pushNamed(context, item["page"]);
                },
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                blurRadius: 8,
                                spreadRadius: 0.3,
                                offset: Offset(0, 3))
                          ]),
                          child: AspectRatio(
                            aspectRatio: 2 / 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network(
                                item["img"],
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          children: [
                            Text(item["price"],
                                style: TextStyle(
                                    fontSize: 16, color: Colors.pink)),
                            Text(item["title"],
                                style:
                                TextStyle(fontSize: 32, color: Colors.black)),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 8),
                              child: Text(
                                item["description"],
                                style: TextStyle(
                                    fontSize: 16, color: Colors.pink),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
                  .toList(),
              options: CarouselOptions(
                  height: 530,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  aspectRatio: 2,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  // viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
} //end class
