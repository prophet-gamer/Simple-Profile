import 'package:alirezachenariprof/Rowdetail.dart';
import 'package:alirezachenariprof/newpage.dart';
import 'package:alirezachenariprof/personalInfo.dart';
import 'package:alirezachenariprof/profileimage.dart';
import 'package:alirezachenariprof/setting.dart';
import 'package:alirezachenariprof/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  ThemeData _themeData = ThemeData.light();
  void changeTheme(bool v) {
    setState(() {
      if (v == false) {
        _themeData = ThemeData.light();
      } else if (v == true) {
        _themeData = ThemeData.dark();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _themeData,
      darkTheme: ThemeData.dark(),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => const MyHomePage(),
        "/Add": (BuildContext context) => const Add(),
        "/Book": (BuildContext context) => const Book_page(),
        "/Setting": (BuildContext context) =>
            Settings(changeTheme: changeTheme),
      },
      initialRoute: "/home",
    );
  }
}

// ignore: camel_case_types
class drawerr extends StatelessWidget {
  const drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text("home"),
            onTap: () => {Navigator.pushNamed(context, "/home")},
          ),
          ListTile(
            title: const Text("add"),
            onTap: () => {Navigator.pushNamed(context, "/Add")},
          ),
          ListTile(
            title: const Text("show"),
            onTap: () => {Navigator.pushNamed(context, "/Book")},
          ),
          ListTile(
            title: const Text("setting"),
            onTap: () => {Navigator.pushNamed(context, "/Setting")},
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const drawerr(),
      appBar: AppBar(
        backgroundColor: blueTheme.appBarTheme.backgroundColor,
        title: const Text('Alireza Chenari Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          //space for top appbar and pic
          const SizedBox(
            height: 10,
          ),
          const Center(child: Profile()),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Alireza Chenari",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Computer Engineer",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          // space field and card
          const SizedBox(
            height: 5,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Card(
                  color: const Color(0xff5d54c1),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Share Profile',
                      style: blueTheme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Rowdetail(),
          const SizedBox(
            height: 10,
          ),
          const Info(),
        ],
      ),
    );
  }
}
