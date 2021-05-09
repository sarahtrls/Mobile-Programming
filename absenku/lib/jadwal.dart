import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(Schedule());

class Schedule extends StatelessWidget {
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
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: ListTile(
                      title: Text(
                        'Sabtu, 08 Mei 2021 ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Hari ini')),
                ),
                current(),
                current2(),
                current3()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget current() {
  return new Container(
    padding: const EdgeInsets.only(top: 90.0, left: 20),
    child: Container(
      width: 370,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.indigo[900],
        borderRadius: BorderRadius.circular(10),
      ),
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
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Divider(),
                Text(
                  "Status : Sedang Berlangsung",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget current2() {
  return new Container(
    padding: const EdgeInsets.only(top: 260, left: 20),
    child: Container(
      width: 370,
      height: 160,
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
                  "Jadwal Perkuliahan : Sabtu, 10.00 - 11.40",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Divider(),
                Text("Pemrograman Data Analisis | Gabung A",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Divider(),
                Text(
                  "Dosen : Irfan Wahyudi, M.Kom",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Divider(),
                Text(
                  "Status : Akan Datang",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget current3() {
  return new Container(
    padding: const EdgeInsets.only(top: 430, left: 20),
    child: Container(
      width: 370,
      height: 160,
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
                  "Jadwal Praktikum : Sabtu, 13.00 - 14.30",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Divider(),
                Text("Pemrograman Data Analisis | Gabung E",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Divider(),
                Text(
                  "Asisten Praktikum : Gustian & Grace ",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Divider(),
                Text(
                  "Status : Akan Datang",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
