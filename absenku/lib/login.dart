import 'package:flutter/material.dart';
import 'package:absenku/home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconLogin() {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 70.0),
      ),
      Image.asset(
        "img/login.png",
        width: 77,
        height: 33,
      )
    ]);
  }

  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 70.0),
        ),
        Text(
          "Hello",
          style: TextStyle(
              color: Colors.orange[700],
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
        ),
        Text(
          "Silakan masuk terlebih dahulu sebelum melanjutkan",
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.indigo[900],
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 60.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Nama Mahasiswa/NPM",
            hintStyle: TextStyle(color: Colors.grey),
          ),
          style: TextStyle(color: Colors.grey[900]),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey),
          ),
          style: TextStyle(color: Colors.grey[900]),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 25.0),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            width: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange[700]),
                child: Text('Masuk'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                }),
          ),
        ),
      ],
    );
  }
}
