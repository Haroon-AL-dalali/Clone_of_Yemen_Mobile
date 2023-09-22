import 'package:flutter/material.dart';
import 'package:yemen_mobile/topapp.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(children: [
        Image.asset(
          'images/images/background.png',
          height: 200,
          width: 200,
        ),
        Column(
          children: [
            userDetials(),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(30),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  childAspectRatio: (20 / 15),
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset('images/icons/ic_offer_service.svg'),
                          Spacer(),
                          Text(
                            'العروض',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset('images/icons/ic_package_alt.svg'),
                          Spacer(),
                          Text(
                            'الباقات',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                              'images/icons/ic_internet_packages_service.svg'),
                          Spacer(),
                          Text(
                            'باقات الانترنت',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                              'images/icons/ic_ringtones_service.svg'),
                          Spacer(),
                          Text(
                            'رنات',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                              'images/icons/ic_services_service.svg'),
                          Spacer(),
                          Text(
                            'الخدمات',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                              'images/icons/ic_riyal_mobile_service.svg'),
                          Spacer(),
                          Text(
                            'ريال موبايل',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(15)),
                              
              
              child: CarouselSlider(
                
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 3.0,
                  enlargeCenterPage: true,
                ),
                items: [
                  Image.asset('images/images/ad1.png',
                  
          
                  ),
                  Image.asset('images/images/ad2.png'),
                  Image.asset('images/images/ad3.png'),
                ],
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 4, 0),
          width: 500,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                )
              ],
              borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.fromLTRB(15, 120, 15, 5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' الرصيد الحالي ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(117, 238, 182, 119),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        ' معلومات الرصيد',
                        style: TextStyle(
                          color: Colors.red[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Text(
                        '  ريال 5000',
                        style: TextStyle(
                          color: Colors.red[900],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        )
      ]),
    );
  }
}
