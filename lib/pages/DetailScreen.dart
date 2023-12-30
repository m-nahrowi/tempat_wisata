import 'package:flutter/material.dart';
import 'ButtonAndDropDown.dart';
import 'InputWidget.dart';

void main() => runApp(DetailScreen());

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text('Open Every'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.access_alarm),
                      SizedBox(height: 8.0),
                      Text('09:00 - 20:00'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.attach_money_sharp),
                      SizedBox(height: 8.0),
                      Text('Rp. 25.000'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  "Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                )),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text("ini untuk ke Button"),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ButtonDropDown()));
                      },
                      child: Text(("Pindah ke latihan Button")))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(children: [
                Text("Ini latihan input widget"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputWidget()));
                    },
                    child: Text("pindah ke input widget"))
              ]),
            )
          ],
        ),
      ),
    );
  }
}