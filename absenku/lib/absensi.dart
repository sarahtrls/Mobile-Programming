import 'package:absenku/details.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(Absensi());

class Absensi extends StatelessWidget {
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
            menu(
                'Perhatikan waktu saat absen! Apabila lebih dari waktu perkuliahan maka absen otomatis tidak hadir.'),
            _buildButton(context)
          ],
        ),
      ),
    );
  }
}

Widget menu(description) {
  return Card(
    margin: EdgeInsets.only(top: 30, left: 15, right: 15),
    child: ListTile(
        leading: Icon(
          Icons.info_rounded,
          color: Colors.red,
          size: 40,
        ),
        subtitle: Text(
          description,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        )),
  );
}

Widget current() {
  return new Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        width: 370,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.indigo[900],
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
                  Text(
                    "Jadwal Perkuliahan : Sabtu, 8 Mei 2021 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Divider(),
                  Divider(),
                  Text(
                    "08.00-09.40",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Text("Mobile Programming | Gabung B",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Divider(),
                  Divider(),
                  Text(
                    "Dosen Matakuliah : Saad Nurul Islah, M.Comp",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
}

Widget _buildButton(BuildContext context) {
  return Column(children: <Widget>[
    Padding(
      padding: EdgeInsets.only(
        top: 25.0,
      ),
    ),
    InkWell(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              width: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent[700]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(10, 10, 10, 10)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Text('Tidak Hadir'),
                  onPressed: () {}),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(10, 10, 10, 10)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Text('Hadir'),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return Details();
                    }));
                  }),
            ),
          ]),
    ),
  ]);
}
