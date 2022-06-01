import 'package:flutter/material.dart';
import 'package:flutter_basic_prakerja/pertanyaan.dart';
import 'package:flutter_basic_prakerja/jawaban.dart';

class Kuis extends StatelessWidget {
  Function(int) jawaban;

  List<Map<String, Object>> pertanyaan;
  int soalIndex;

  Kuis({
    @required this.pertanyaan,
    @required this.soalIndex,
    @required this.jawaban,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(pertanyaan[soalIndex]['pertanyaan']),
        ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(
              () => jawaban(jawabanText['score']), jawabanText['text']);
        }).toList(),
      ],
    );
  }
}
