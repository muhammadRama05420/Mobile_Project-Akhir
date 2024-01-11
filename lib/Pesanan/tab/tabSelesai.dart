import 'package:flutter/material.dart';
import 'package:dcourier/Pesanan/Pesanan.dart';
import 'package:dcourier/constant.dart';

class TabSelesai extends StatefulWidget {
  const TabSelesai({super.key});

  @override
  State<TabSelesai> createState() => _TabSelesaiState();
}

class _TabSelesaiState extends State<TabSelesai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2A8B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 24, horizontal: 21),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffF44336),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.local_shipping_sharp,
                    color: Colors.white,
                    size: 65,
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Paket Selesai Diantarkan',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                          textAlign: TextAlign.start),
                      Text('Muhammad Rama.',
                          style: whiteTextStyle.copyWith(
                              fontSize: 14, fontWeight: semibold),
                          textAlign: TextAlign.start),
                      Text('Kota Bandung \nJl.Berlian no.16',
                          style: whiteTextStyle.copyWith(fontSize: 12),
                          textAlign: TextAlign.start),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
