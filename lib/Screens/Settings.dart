import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yemen_mobile/Screens/Containers.dart';
import 'package:yemen_mobile/topapp.dart';

class Settings extends StatelessWidget {
  var co = Color.fromARGB(117, 166, 162, 162);

  Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: customeAppBar(' الإعدادات'),
        body: ContainerList(
          title: [
            'تغيير كلمة المرور',
            'رقم هاتفي الثابت',
            'سياية الاستخدام',
            'مشاركة التطبيق',
            'نسخة التطبيق',
            'خروج',
            'تعطيل الحساب '
          ],
          icon: [
            'images/icons/lockColored.svg',
            'images/icons/ic_phone_alt.svg',
            'images/icons/aboutApp.svg',
            'images/icons/ic_share_app.svg',
            'images/icons/ic_app_version.svg',
            'images/icons/ic_app_version.svg',
            'images/icons/deleteAccount.svg'
          ],
          url: [
            'https://google.com',
            'https://google.com',
            'https://google.com',
            'https://google.com',
            'https://google.com',
            'https://google.com',
            'https://google.com'
          ],
        ));
  }
}
