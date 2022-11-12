import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;

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
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Actions");
            },
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
            style: ElevatedButton.styleFrom(
                // primary: isSwitch ? Colors.blue : Colors.green), Deprecated
                // Use the line below for colour switching
                backgroundColor: isSwitch ? Colors.blue : Colors.green),
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
          Switch(
            value: isSwitch,
            onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;
              });
            },
          ),
          Checkbox(
              value: isCheckBox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckBox = newBool;
                });
              }),
          Image.network(
            "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg?auto=compress&cs=tinysrgb&w=720&h=300&dpr=1",
          ),
        ]),
      ),
    );
  }
}
