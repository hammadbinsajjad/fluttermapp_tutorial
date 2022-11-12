import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(children: [
        Image.asset("images/einstein.jpg"),
        const SizedBox(height: 10),
        const Divider(
          color: Colors.black,
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
          color: Colors.blueGrey,
          child: const Center(
            child: Text(
              "This is a text widget",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            debugPrint("Elevated Button Clicked of Learn Flutter Page");
          },
          child: const Text("Elevated Button"),
        ),
        OutlinedButton(
          onPressed: () {
            debugPrint("Elevated Button Clicked of Learn Flutter Page");
          },
          child: const Text("Elevated Button"),
        ),
        TextButton(
          onPressed: () {
            debugPrint("Elevated Button Clicked of Learn Flutter Page");
          },
          child: const Text("Elevated Button"),
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            debugPrint("This is the row");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.local_fire_department,
                color: Colors.blue,
              ),
              Text("Row Widget"),
              Icon(
                Icons.local_pharmacy,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
