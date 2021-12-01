import 'package:flutter/material.dart';

import 'welcome_text.dart';

class Welcome extends StatelessWidget {
  final List<Map<String, Object>> welcomeList;
  Welcome({required this.welcomeList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          WelcomeText(
            welText: welcomeList,
          ),
        ],
      ),
    );
  }
}
