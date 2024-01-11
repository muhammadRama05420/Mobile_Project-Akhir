import 'package:dcourier/Pesanan/tab/tabPengantaran.dart';
import 'package:dcourier/Pesanan/tab/tabAktif.dart';
import 'package:dcourier/Pesanan/tab/tabSelesai.dart';
import 'package:dcourier/bottomNavbar.dart';
import 'package:dcourier/constant.dart';
import 'package:flutter/material.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({super.key});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pesanan',
            style: whiteTextStyle.copyWith(fontSize: 40, fontWeight: bold),
          ),
          backgroundColor: purpleColor,
          automaticallyImplyLeading: false,
          toolbarHeight: 88,
          bottom: const TabBar(
            unselectedLabelColor: Colors.white,
            dividerColor: Colors.transparent,
            labelColor: Color(0xffF44336),
            tabs: <Widget>[
              Tab(
                  child: Text(
                'Aktif',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
              Tab(
                  child: Text(
                'Selesai',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
              Tab(
                  child: Text(
                'Pengantaran',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ],
            indicatorColor: Color(0xffF44336),
          ),
        ),

//BOTTOM NAVBAR--------------------------------------------------------------------------

        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          elevation: 1,
          iconSize: 44,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Color(0xff2C2A8B),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xffffffff),
              ),
              backgroundColor: Color(0xff2C2A8B),
              label: 'Pesanan',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: Color(0xffffffff),
              ),
              backgroundColor: Color(0xff2C2A8B),
              label: 'Pesanan Baru',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.portrait_rounded,
                color: Color(0xffffffff),
              ),
              backgroundColor: Color(0xff2C2A8B),
              label: 'Profile',
            ),
          ],
        ),

        body: TabBarView(
          children: <Widget>[
            TabAktif(),
            TabSelesai(),
            TabPengantaran(),
          ],
        ),
      ),
    );
  }
}
