import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final List<Map<String, Object>> welText;

  WelcomeText({required this.welText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ...(welText.map((data) {
          return Container(
            padding: EdgeInsets.fromLTRB(
                data['left'] as double, data['top'] as double, 0.0, 0.0),
            child: Text(
              data['text'] as String,
              style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                  color: data['color'] as Color),
            ),
          );
        }))
      ],
    );
  }
}
