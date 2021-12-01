import 'package:flutter/material.dart';
import '../components/Welcome.dart';

class Login extends StatelessWidget {
  final _loginWelcomeText = [
    {
      'text': 'Hello',
      'left': 0.0,
      'top': 110.0,
      'color': Colors.black as Color
    },
    {
      'text': 'There',
      'left': 0.0,
      'top': 180.0,
      'color': Colors.black as Color
    },
    {
      'text': '.',
      'left': 210.0,
      'top': 180.0,
      'color': Colors.green[400] as Color
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Welcome(welcomeList: _loginWelcomeText),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 0.0, right: 0.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent))),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent))),
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 0.0),
                  child: InkWell(
                      onTap: () {
                        print('Forget Password.');
                      },
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[400],
                            decoration: TextDecoration.underline),
                      )),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 60.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(50.0),
                    shadowColor: Colors.green,
                    elevation: 7.0,
                    color: Colors.green[400],
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text('LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 60.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(AssetImage('assets/fb.png')),
                        ),
                        SizedBox(width: 10.0),
                        Center(
                          child: Text(
                            'Login with facebook',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('New to Mulberry ?'),
              SizedBox(
                width: 5.0,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.green[400],
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
