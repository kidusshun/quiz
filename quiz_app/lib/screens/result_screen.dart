import 'package:flutter/material.dart';
import 'package:quiz_app/screens/main_menu.dart';
import 'package:quiz_app/ui/shared/color.dart';

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35.0,
            ),
            const Text(
              "You Score is",
              style: TextStyle(color: Colors.white, fontSize: 45.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "${widget.score}",
              style: const TextStyle(
                color: Colors.orange,
                fontSize: 85.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainMenu(),
                    ));
              },
              style: TextButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: AppColor.secondaryColor,
                padding: const EdgeInsets.all(18.0),
              ),
              child: const Text(
                "Repeat the quiz",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
