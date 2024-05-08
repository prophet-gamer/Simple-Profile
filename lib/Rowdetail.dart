// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Rowdetail extends StatefulWidget {
  const Rowdetail({super.key});

  @override
  State<Rowdetail> createState() => _Rowdetail();
}

class _Rowdetail extends State<Rowdetail> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Country \n Iran",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "City \n Mashhad",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Age \n 21",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Hobby \n Game",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Course \n Flutter",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
