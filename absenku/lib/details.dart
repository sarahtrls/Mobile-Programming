import 'package:absenku/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(Details());

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          'absenKu',
          style: TextStyle(color: Colors.indigo[900]),
        ),
        leading: IconButton(
          icon: Icon(Icons.home, color: Colors.indigo[900]),
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
      padding: const EdgeInsets.only(top: 40.0, left: 20),
      child: Container(
        width: 370,
        height: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.check_circle_rounded,
                    size: 250,
                    color: Colors.green,
                  ),
                  Divider(),
                  Text(
                    'Absensi Pertemuan 5 Berhasil',
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Divider(),
                  Divider(),
                  Text(
                    'Terimakasih sudah melakukan absensi!',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Divider(),
                  Text(
                    'Waktu Record : 09.15',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
      ));
}
