import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const routeName = "second_page";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: Text("Add a tile"),
            ),
            ListView.builder(
              physics: ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: index.isEven
                      ? Colors.lightGreenAccent
                      : Colors.orangeAccent,
                  child: const ListTile(
                    leading: Icon(Icons.adb),
                    title: Text("My Title"),
                  ),
                );
              },
              itemCount: number,
            ),
          ],
        ),
      ),
    );
  }
}
