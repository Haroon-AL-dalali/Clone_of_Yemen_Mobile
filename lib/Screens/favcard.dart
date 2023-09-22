import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget favcardList({
  required List<String> mint,
  required List<String> mb,
  required List<String> messg,
  required List<String> date,
  required List<String> title,
  required List<String> icon,
}) {
  return ListView.builder(
    itemCount: title.length,
    itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title[index],
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  messg[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(width: 10.0),
                SvgPicture.asset(icon[index], height: 30),
                Spacer(),
                Text(
                  mint[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(width: 10.0),
                SvgPicture.asset(icon[index], height: 30),
              ],
            ),
            Row(
              children: [
                Text(
                  date[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(width: 10.0),
                SvgPicture.asset(icon[index], height: 30),
                Spacer(),
                Text(
                  mb[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(width: 10.0),
                SvgPicture.asset(icon[index], height: 30),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  '2800 ريال',
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 44, 76),
                  ),
                ),
                Spacer(),
                Container(
                  width: 150,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 180, 44, 76),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(child: Text('إشتراك')),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
