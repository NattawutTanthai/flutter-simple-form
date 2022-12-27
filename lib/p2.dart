import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form2"),
          backgroundColor: Colors.blue[500],
          automaticallyImplyLeading: true,
        ),
        body: Column(
          children: <Widget>[
            Text(
              'Hello World!!!',
              style: Theme.of(context).textTheme.headline6,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.pink,
                labelText: "Username",
                labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
              )),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.pink,
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("back")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
