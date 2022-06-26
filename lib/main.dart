// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basit Hesap Makinesi",
      home: AnaEkran(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit Hesap Makinesi"),
      ),
      body: altislem(),
    );
  }
}

class altislem extends StatefulWidget {
  const altislem({Key? key}) : super(key: key);
  @override
  _altislemState createState() => _altislemState();
}

class _altislemState extends State<altislem> {
  String isim = 'Basit Hesap Makinesi';
  int a = 10, b = 5;
  TextEditingController t1 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController(text: "0");

  void toplama() {
    setState(() {
      isim = (num.parse(t1.text) + num.parse(t2.text)).toString();
    });
  }

  void cikarma() {
    setState(() {
      isim = (num.parse(t1.text) - num.parse(t2.text)).toString();
    });
  }

  void carpma() {
    setState(() {
      isim = (num.parse(t1.text) * num.parse(t2.text)).toString();
    });
  }

  void bolme() {
    setState(() {
      isim = (num.parse(t1.text) / num.parse(t2.text)).toString();
    });
  }

  void ortalama() {
    setState(() {
      var toplam = num.parse(t1.text) + num.parse(t2.text);
      isim = (toplam/2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(isim),
            TextField(controller: t1),
            TextField(controller: t2),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: toplama,
                      child: Text('Topla'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 1.0,
                      height: 1.0,
                    ),
                    RaisedButton(
                      onPressed: cikarma,
                      child: Text('Çıkar'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: carpma,
                      child: Text('Çarp'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 1.0,
                      height: 1.0,
                    ),
                    RaisedButton(
                      onPressed: bolme,
                      child: Text('Bölme'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 1.0,
                      height: 1.0,
                    ),
                    RaisedButton(
                      onPressed: ortalama,
                      child: Text('Ortalama'),
                    ),
                  ],
                ),
              ],
            )
          ])),
    );
  }
}