import 'package:flutter/material.dart';
import 'package:absenku/home.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          'absenKu',
          style: TextStyle(color: Colors.indigo[900]),
        ),
        actions: [],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.indigo[900]),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Home();
            }));
          },
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[current()],
            ),
          ],
        ),
      ),
    );
  }
}

Widget current() {
  return new Container(
      padding: const EdgeInsets.only(top: 40.0),
      child: Container(
        width: 3500,
        height: 600,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'img/about.png',
                  ),
                  Divider(),
                  Divider(),
                  Divider(),
                  Text(
                    'AbsenKu merupakan aplikasi absen berbasis mobile,',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('yang memudahkan mahasiswa untuk melakukan absensi',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Text(
                    ' matakuliah dan praktikum di Universitas Pakuan',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Text(
                    'v.1.0',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Text(
                    'copyright@2021',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
}
