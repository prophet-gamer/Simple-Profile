// ignore_for_file: file_names

import 'package:alirezachenariprof/theme.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _Info();
}

class _Info extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: const Color.fromARGB(255, 211, 217, 226),
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 5, vertical: 15),
        child: ListBody(
          children: [
            const SizedBox(height: 1),
            Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Color(0xff5D54C1),
                  size: 30,
                ),
                Text(
                  " Personal Information",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: blueTheme.textTheme.bodyLarge?.color),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // black line after info
            Container(
              width: 150,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t Full Name : ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t Alireza Chenari",
              style: TextStyle(
                  fontSize: 14, color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t Bio : ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t Hey, I'm Alireza from Quchan university",
              style: TextStyle(
                  fontSize: 14, color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t Phone Number : ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t +989153817949",
              style: TextStyle(
                  fontSize: 14, color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t Email : ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t alirezachenary@gmail.com",
              style: TextStyle(
                  fontSize: 14, color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t Telegram : ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\t @Be_Creative3",
              style: TextStyle(
                  fontSize: 14, color: blueTheme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
