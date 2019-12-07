import 'package:flutter/material.dart';

void main() => runApp(TampilAdab());

class TampilAdab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Adab Berpakaian"),
          centerTitle: true,
        ),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> textindo = [
    "Membaca Doa sebelum masuk kamar mandi.",
    "Dahulukan kaki kanan sebelum masuk kamar mandi.",
    "Tidak membawa yg ada tulisan allah nya.",
    "Tidak mengobrol atau berisik di kamar mandi.",
    "Tidak boleh ngeden atau mengucapkan eeee.",
    "Keluar dengan kaki kiri.",
    "Mengucapkan keluar kamar mandi"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textindo.length,
        itemBuilder: (BuildContext context, int posisi) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(posisi.toString()),
                    Text(textindo[posisi])
                  ],
                ),
              ),
            ),
          );
        });
  }
}
