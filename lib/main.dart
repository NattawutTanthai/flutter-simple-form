import 'package:flutter/material.dart';
import 'p2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Form'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final conUsername = TextEditingController();
  final conPassword = TextEditingController();

  void clearText() {
    conUsername.clear();
    conPassword.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Hello World!!!',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
              height: 200,
              child: FittedBox(
                  fit: BoxFit.fill, child: Image.asset("images/contact.png"))),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
                controller: conUsername,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.pink,
                  labelText: "Username",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
                controller: conPassword,
                decoration: const InputDecoration(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const p2()));
                    },
                    child: const Text("save")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      clearText();
                    },
                    child: const Text("clear")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
