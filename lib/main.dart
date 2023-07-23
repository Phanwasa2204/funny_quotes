import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyQuotesApp());
}

class FunnyQuotesApp extends StatelessWidget {
  const FunnyQuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> imList = [
    'ถ้าที่ตรงนั้น ไม่ใช่ที่ของเรา เราจะไม่มีโฉนด',
    'เขามันทรงดี  ส่วนเราทรงตัวได้ก็บุญแล้ว',
    'เวรกรรมของเธอ ที่ได้เจอคนน่ารักแบบเรา',
    'เหงานิดหน่อย แต่กินข้าวอร่อยเหมือนเดิม',
    'วันนี้ไม่เห็นค่า วันหน้าก็ได้ เราว่างทุกวันแหละ',
    'ยุคนี้พรหมลิขิต ก็สู้บัตรเครดิตไม่ได้หรอก',
    'ถึงอะไรจะไม่ดี แต่ปากดีที่หนึ่งนะ',
  ];
  List<Color> colors = [
    Colors.pink,
    Colors.cyanAccent,
    Colors.green,
    Colors.deepOrange,
    Colors.purple,
    Colors.blue,
    Colors.teal,
  ];
  var RText = imList[0];
  var CRColor = Colors.amberAccent[0];

  void _handleClickGo() {
    setState(() {
      var rand = Random();
      var newText = RText;
      while (newText == RText) {
        var RT = rand.nextInt(imList.length);
        RText = imList[RT];
      }

      var newColor = CRColor;
      while (newColor == CRColor) {
        var RC = rand.nextInt(colors.length);
        CRColor = colors[RC];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำคมกวนๆ')),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleClickGo,
        child: const Center(
          child: Text(
            'Next',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            RText,
            style: TextStyle(
              color: CRColor,
              fontSize: 50,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
