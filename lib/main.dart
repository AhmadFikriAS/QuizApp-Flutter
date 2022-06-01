import 'package:flutter/material.dart';
import 'package:flutter_basic_prakerja/hasil.dart';
import 'package:flutter_basic_prakerja/kuis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _soalIndex = 0;
  var totalSkor = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang akan Anda kunjungi?',
      'jawaban': [
        {
          'text': 'Pegunungan',
          'score': 10,
        },
        {
          'text': 'Pantai',
          'score': 5,
        },
        {
          'text': 'Mall',
          'score': 3,
        },
        {
          'text': 'Hutan',
          'score': 7,
        },
      ],
    },
    {
      'pertanyaan': 'Apa warna kesukaan Anda?',
      'jawaban': [
        {
          'text': 'Merah',
          'score': 7,
        },
        {
          'text': 'Biru',
          'score': 3,
        },
        {
          'text': 'Hijau',
          'score': 5,
        },
        {
          'text': 'Hitam',
          'score': 1,
        },
      ],
    },
    {
      'pertanyaan': 'Apa hobby Anda?',
      'jawaban': [
        {
          'text': 'Sepak bola',
          'score': 2,
        },
        {
          'text': 'Basket',
          'score': 3,
        },
        {
          'text': 'Berenang',
          'score': 6,
        },
        {
          'text': 'Ngoding',
          'score': 4,
        },
      ],
    },
  ];

  void resetKuis() {
    setState(() {
      _soalIndex = 0;
      totalSkor = 0;
    });
  }

  void _jawaban(int skor) {
    totalSkor = totalSkor + skor;
    setState(() {
      _soalIndex += 1;
    });

    print(_soalIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text('Aplikasi Kuis'),
        ),
        body: _soalIndex < pertanyaan.length
            ? Container(
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: Kuis(
                  pertanyaan: pertanyaan,
                  soalIndex: _soalIndex,
                  jawaban: _jawaban,
                ),
              )
            : Hasil(totalSkor, resetKuis),
      ),
    );
  }
}
