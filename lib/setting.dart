import 'package:alirezachenariprof/main.dart';
import 'package:alirezachenariprof/theme.dart';
import 'package:flutter/material.dart';

bool _value = false;
String mode = "lightmode";

class Settings extends StatefulWidget {
  final Function(bool) changeTheme;
  const Settings({super.key, required this.changeTheme});
  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueTheme.appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text("Settings"),
      ),
      drawer: const drawerr(),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(child: Text(mode)),
          Center(
            child: Switch(
              value: _value,
              onChanged: (value) {
                setState(
                  () {
                    if (_value == false) {
                      _value = value;
                      mode = "darkmode";
                      widget.changeTheme(_value);
                    } else {
                      _value = value;
                      mode = "lightmode";
                      widget.changeTheme(_value);
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class DarkThemePreference {
//   static const THEME_STATUS = "THEMESTATUS";

//   setDarkTheme(bool value) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool(THEME_STATUS, value);
//   }

//   Future<bool> getTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getBool(THEME_STATUS) ?? false;
//   }
// }
