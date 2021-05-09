import 'package:absenku/history.dart';
import 'package:absenku/jadwal.dart';
import 'package:absenku/login.dart';
import 'package:flutter/material.dart';
import 'package:absenku/absensi.dart';
import 'package:absenku/about.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: new Text('absenKu'),
        actions: [
          // action button
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return About();
              }));
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return LoginPage();
            }));
          },
        ),
      ),
      body: Container(
        child: Column(children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange[800],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text(
                      "Sarah Tri Lestari",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "065118239",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 200.0, left: 20),
              child: Container(
                width: 370,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: new GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Absensi()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "08.00-09.40",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Divider(),
                            Text("Mobile Programming | Gabung B",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Divider(),
                            Text(
                              "Status : Sedang Berlangsung",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
          Card(
            margin: EdgeInsets.only(top: 30, left: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Schedule()));
              },
              child: ListTile(
                  leading: Icon(Icons.keyboard_arrow_right_outlined),
                  title: Text(
                    'Lihat Jadwal',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('3 Matakuliah untuk Hari ini')),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 30, left: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Absensi()));
              },
              child: ListTile(
                  leading: Icon(Icons.keyboard_arrow_right_outlined),
                  title: Text(
                    'Absensi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Lakukan Absensi Tepat Waktu')),
            ),
          ),
          Card(
              margin: EdgeInsets.only(top: 30, left: 15, right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new History()));
                },
                child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right_outlined),
                    title: Text(
                      'Riwayat Absensi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Tidak ada absen yang terlewat')),
              ))
        ]),
      ),
    );
  }
}
