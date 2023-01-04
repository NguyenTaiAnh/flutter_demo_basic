import 'package:flutter/material.dart';
import 'package:flutter_application_1/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("click here"),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return LearnFlutterPage();
          })
          );
        },
      ),
    );
  }
}
