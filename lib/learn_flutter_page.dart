import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwich = false;
  bool isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: (){
          debugPrint("click actions info");
        }, icon: const Icon(Icons.info_outline))],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('./images/image.png'),
          const SizedBox(height: 20),
          const Divider(
            color: Colors.black,
          ),
          Container(
            color: Colors.blueGrey,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: const Center(
              child: Text(
                "This a text widget",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwich ? Colors.red[300] : Colors.green),
              onPressed: (() {
                debugPrint("elevated button");
              }),
              child: Text("Elevated button")),
          OutlinedButton(
              onPressed: (() {
                debugPrint("Outline button");
              }),
              child: Text("Out button")),
          TextButton(
              onPressed: (() {
                debugPrint("Text button");
              }),
              child: Text("Text button")),
          GestureDetector(
            onTap: (() => {debugPrint("Gesture detector")}),
            behavior: HitTestBehavior.opaque,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.local_fire_department, color: Colors.amber,),
                Text("Row Widget"),
                Icon(Icons.local_fire_department, color: Colors.amber,),
              ],
            ),
          ),
          Switch(
              value: isSwich,
              onChanged: (bool newBool) {
                setState(() {
                  isSwich = newBool;
                });
              }),
          Checkbox(value: isCheckBox, onChanged: (bool? newBool) {
              setState(() {
                isCheckBox = newBool!;
              });
          }),
          Image.network("https://freshhh.nl/app/uploads/2018/03/focus-heldere-geest-voeding-freshhh.jpg")
        ]),
      ),
    );
  }
}
