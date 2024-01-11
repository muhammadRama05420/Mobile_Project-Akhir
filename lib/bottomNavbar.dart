import 'package:dcourier/constant.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //NAVBAR
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
    );
  }
}
