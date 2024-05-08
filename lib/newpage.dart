import 'package:alirezachenariprof/main.dart';
import 'package:alirezachenariprof/theme.dart';
import 'package:flutter/material.dart';

class Book {
  String name, author;
  Book(this.name, this.author);
}

// ignore: non_constant_identifier_names
List<Book> Books = [
  Book("Harry Potter", "J K rowling"),
  Book("prophet and crazy", "Jebran Khalil Jebran"),
  Book("5 AM clubs", "Robin Sharma"),
  Book("Think Again", "Adam Grant"),
  Book("Me Before You", "Jojo Moyes")
];

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueTheme.appBarTheme.backgroundColor,
      ),
      drawer: const drawerr(),
      body: const Center(
          child: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Text(
            "USE THAT DRAWER PLZ",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}

class Add extends StatefulWidget {
  const Add({super.key});
  @override
  State<Add> createState() => _Add();
}

class _Add extends State<Add> {
  TextEditingController nameController = TextEditingController();
  TextEditingController authorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueTheme.appBarTheme.backgroundColor,
      ),
      drawer: const drawerr(),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(3.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(3.0),
              child: TextField(
                controller: authorController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Author',
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, {
                    'Bname': nameController.text,
                    'Aname': authorController.text
                  });
                  String b = nameController.text;
                  String a = authorController.text;
                  Books.add(Book(b, a));
                },
                child: const Text('ADD'))
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Book_page extends StatelessWidget {
  const Book_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueTheme.appBarTheme.backgroundColor,
      ),
      drawer: const drawerr(),
      body: Center(
        child: ListView.builder(
          itemCount: Books.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(Books[index].name),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Secondpage(Books[index])));
              },
            );
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Secondpage extends StatelessWidget {
  Book b;
  Secondpage(this.b, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueTheme.appBarTheme.backgroundColor,
      ),
      drawer: const drawerr(),
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: Column(children: [
            const SizedBox(
              height: 45,
            ),
            Text(b.name),
            const SizedBox(
              height: 20,
            ),
            Text(b.author)
          ]),
        ),
      ),
    );
  }
}
