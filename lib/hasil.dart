import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  int totalSkor;
  Function resetKuis;

  Hasil(this.totalSkor, this.resetKuis);

  String get hasilText {
    String hasil = 'Anda Berhasil';
    if (totalSkor <= 3 || totalSkor <= 8) {
      hasil = 'Sepi banget ya hidupmu';
    } else if (totalSkor <= 9 || totalSkor <= 12) {
      hasil = 'Hmm.. Lumayan juga ya kamu';
    } else if (totalSkor <= 13 || totalSkor >= 16) {
      hasil = 'Keren banget';
    } else {
      hasil = 'Wow energi kamu luarbiasa';
    }

    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            hasilText,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              primary: Colors.white,
            ),
            onPressed: resetKuis,
            child: Text('Ulangi'),
          ),
        ],
      ),
    );
  }
}
