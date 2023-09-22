import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yemen_mobile/Screens/Containers.dart';
import 'package:yemen_mobile/topapp.dart';

class Contacts extends StatelessWidget {
  var co = Color.fromARGB(117, 166, 162, 162);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: customeAppBar('تواصل معنا'),
      body: ContainerList(
        title: [
          'مراكز الخدمة',
          'اتصل بنا',
          'ارسال بريد إلكتروني',
          'صفحتنا على فيسبوك',
          'حسابنا على انستجرام',
          'قناتنا على يوتيوب',
          'حسابنا على لينكد ان',
          'صفحنما على تويتر',
          'قناتنا على تليجرام'
        ],
        icon: [
          'images/icons/ic_services_places_map.svg',
          'images/icons/ic_mobile_colored.svg',
          'images/icons/contactEmail.svg',
          'images/icons/facebook.svg',
          'images/icons/instagram.svg',
          'images/icons/youtube.svg',
          'images/icons/linkedin.svg',
          'images/icons/twitter.svg',
          'images/icons/telegram.svg'
        ],
        url: [
          'https://maps.app.goo.gl/ZRwoeawX2reJUcig8',
          'https://google.com',
          'https://google.com',
          'https://www.facebook.com/yemenmobile.com.ye?mibextid=ZbWKwL',
          'https://instagram.com/yemenmobileye1?igshid=NzZhOTFlYzFmZQ==',
          'https://youtube.com/@YemenmobileYe1?si=oUulyKjlpeDQRk04',
          'https://www.linkedin.com/authwall?trk=bf&trkInfo=AQHt1tfmSw6cEwAAAYqYh9t4HDWJAUQ-pxOGw9UkcQ8FcVvCckrOs492GaN4CXZ-AbKQKVQ_jdUczbu9z-hz_GXpEvcVg5-l6PrSQUpPhrUHxxbzc8Z0HgL07TXN5ZporEGFQCk=&original_referer=&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2Fyemenmobile%2F',
          'https://twitter.com/YemenmobileYe1?t=0jui6uoNi_dRLYnQv0LwBw&s=09',
          'https://t.me/YemenMobileChannel'
        ],
      ),
    );
  }
}
