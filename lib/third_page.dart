import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static const routeName = "third_page";

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final TextEditingController _controller = TextEditingController();
  String userInput = "nothing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    userInput = _controller.text;
                  });
                },
                child: Text(
                  "Show the text",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              color: Color.fromARGB(255, 221, 45, 154),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: _controller,
              ),
              color: const Color.fromARGB(255, 102, 242, 239),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  userInput,
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.red,
                  ),
                ),
              ),
              color: Color.fromARGB(255, 251, 233, 33),
            ),
          ),
        ],
      ),
    );
  }
}
