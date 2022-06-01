import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  Function() handlePilih;
  String jawabanText;

  Jawaban(this.handlePilih, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: handlePilih,
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
        ),
        child: Text(
          jawabanText,
        ),
      ),
    );
  }
}
