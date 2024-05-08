import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(200),
        ),
        border: Border.all(
          color: const Color(0xff5d54c1),
          width: 4.0,
        ),
      ),
      child: const CircleAvatar(
        radius: 75,
        backgroundImage: AssetImage('images/2.jpg'),
      ),
    );
  }
}
