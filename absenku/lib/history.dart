import 'package:absenku/detailhistory.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(History());

class History extends StatelessWidget {
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
            child: Column(children: <Widget>[
          Stack(children: <Widget>[
            Card(
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: ListTile(
                leading: Icon(Icons.keyboard_arrow_down),
                title: Text(
                  'Sabtu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 90.0, left: 20),
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
                            builder: (context) => new DetailHistory()));
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
                              "Jadwal Perkuliahan : Sabtu, 08.00 - 09.40",
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
                              "Dosen : Saad Nurul Islah, M.Comp",
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
            Card(
              margin: EdgeInsets.only(top: 250, left: 15, right: 15),
              child: ListTile(
                leading: Icon(Icons.keyboard_arrow_down),
                title: Text(
                  'Senin',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 330, left: 20),
              child: Container(
                width: 370,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Jadwal Perkuliahan : Senin, 08.00 - 09.40",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Divider(),
                          Text("Optimasi | Kelas H",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Divider(),
                          Text(
                            "Dosen : IMulyati, M.Kom",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Divider(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 480, left: 20),
              child: Container(
                width: 370,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Jadwal Praktikum : Senin, 16.00 - 17.40",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Divider(),
                          Text("Praktikum Optimasi",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Divider(),
                          Text(
                            "Asisten Praktikum : Hilal D.A & Runanto ",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ])
        ])));
  }
}
