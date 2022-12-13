import 'package:flutter/material.dart';

import 'second_page.dart';
import 'third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
      routes: {
        SecondPage.routeName: (_) => SecondPage(),
        ThirdPage.routeName: (_) => ThirdPage(),
      },
    );
  }
}

class MyScaffold extends StatefulWidget {
  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My New App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SecondPage.routeName);
              },
              child: Text("My Button"),
            ),
            Image.network(
              "https://www.bhaktiphotos.com/wp-content/uploads/2021/07/Sivan-Hand-Photo-with-Trishul.jpg",
            ),
            Image.asset(
              "images/ganesh.jpg",
            ),
            Image.network(
              "https://www.bhaktiphotos.com/wp-content/uploads/2021/07/Sivan-Hand-Photo-with-Trishul.jpg",
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ThirdPage.routeName);
              },
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SecondPage.routeName);
              },
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
