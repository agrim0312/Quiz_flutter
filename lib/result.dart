import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Result extends StatelessWidget {
  final VoidCallback restart;
  int totalScore;
  String finalText = 'empty';

  Result(this.totalScore, this.restart);

  @override
  Widget build(BuildContext context) {
    if (totalScore < 15) {
      finalText = 'good';
    } else if (totalScore < 20) {
      finalText = 'you are bad';
    } else {
      finalText = 'never better';
    }

    return ListView(
      children: [
        // Load a Lottie file from a remote url
        Lottie.network(
            'https://assets7.lottiefiles.com/datafiles/VtCIGqDsiVwFPNM/data.json'),

        Center(
          child: Text("$totalScore" + "\n" + finalText,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
        ),
        ElevatedButton(
            onPressed: restart,
            child: Text(
              "restart",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ))
      ],
    );
  }
}
