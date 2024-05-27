// menu\report_page.dart
import 'package:flutter/material.dart';
import 'package:sigra/components/card.components.dart';
import 'package:sigra/models/article.model.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: Text(
                '- SIGRA -',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          //// Arus Kas Bulanan
          //// Persembahan
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
            child: Text(
              'Persembahan',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PersembahanList(),
        ],
      ),
    ));
  }
}

class PersembahanList extends StatelessWidget {
  const PersembahanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Column(
        children: [
          ArticleCard(
            article: Articles(
                title: 'Persembahan Minggu 26 Mei 2024', description: '''
QR BCA: Rp. 50.000,-
QR PERMATA: Rp. 50.000,-
QR MEGA: Rp. 50.000,-
EY: Rp. 70.200,-
Ibu Soeradji: Rp. 100.000,-
E: Rp. 100.000,-
QR BCA: Rp. 150.000,-
ING: Rp. 150.000,-
NN: Rp. 150.000,-
NN: Rp. 250.000,-
Andreas: Rp. 500.000,-
Total QR 9 Mei: Rp. 650.000,-
QR BCA: Rp. 1.000.000,-
NN: Rp. 2.100.000,-
JE: Rp. 3.500.000,-
Kotak Persembahan 9 Mei: Rp. 50.000,-
Kotak Persembahan 12 Mei: Rp. 110.000,-

Jumlah: Rp. 9.030.200,-
Perpuluhan: 
NN: Rp. 360.000,-
ING: Rp. 500.000,-

Jumlah: Rp. 860.000,-
Jumlah Persembahan dan Perpuluhan: Rp. 9.890.200,-
Persembahan Diakonia:
LH: Rp. 30.200,-
NN: Rp. 50.000,-
NN: Rp. 100.000,-
Jumlah: Rp. 180.200,-

Persembahan Youth:
QR BCA: Rp. 15.000,-
AUPSP: Rp. 30.000,-
ISC: Rp. 50.000,-
NN: Rp. 500.000,-

Jumlah: Rp. 595.000,-
              
              '''),
          ),
          ArticleCard(
            article: Articles(
                title: 'Persembahan Minggu 19 Mei 2024', description: '''
QR BCA: Rp. 50.000,-
QR PERMATA: Rp. 50.000,-
QR MEGA: Rp. 50.000,-
EY: Rp. 70.200,-
Ibu Soeradji: Rp. 100.000,-
E: Rp. 100.000,-
QR BCA: Rp. 150.000,-
ING: Rp. 150.000,-
NN: Rp. 150.000,-
NN: Rp. 250.000,-
Andreas: Rp. 500.000,-
Total QR 9 Mei: Rp. 650.000,-
QR BCA: Rp. 1.000.000,-
NN: Rp. 2.100.000,-
JE: Rp. 3.500.000,-
Kotak Persembahan 9 Mei: Rp. 50.000,-
Kotak Persembahan 12 Mei: Rp. 110.000,-

Jumlah: Rp. 9.030.200,-
Perpuluhan: 
NN: Rp. 360.000,-
ING: Rp. 500.000,-

Jumlah: Rp. 860.000,-
Jumlah Persembahan dan Perpuluhan: Rp. 9.890.200,-
Persembahan Diakonia:
LH: Rp. 30.200,-
NN: Rp. 50.000,-
NN: Rp. 100.000,-
Jumlah: Rp. 180.200,-

Persembahan Youth:
QR BCA: Rp. 15.000,-
AUPSP: Rp. 30.000,-
ISC: Rp. 50.000,-
NN: Rp. 500.000,-

Jumlah: Rp. 595.000,-

              
              '''),
          ),
        ],
      ),
    );
  }
}
