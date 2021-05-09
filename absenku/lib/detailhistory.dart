import 'package:absenku/history.dart';
import 'package:flutter/material.dart';

void main() => runApp(DetailHistory());

class DetailHistory extends StatelessWidget {
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
              return History();
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
            menu('Pertemuan 1', 'Hadir'),
            menu('Pertemuan 2', 'Hadir'),
            menu('Pertemuan 3', 'Hadir'),
            menu('Pertemuan 4', 'Hadir'),
            menu('Pertemuan 5', 'Hadir'),
          ],
        ),
      ),
    );
  }
}

Widget current() {
  return new Container(
    padding: const EdgeInsets.only(top: 20.0),
    child: Container(
      width: 370,
      height: 140,
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
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget menu(title, description) {
  return Card(
    margin: EdgeInsets.only(top: 30, left: 15, right: 15),
    child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description)),
  );
}
