import 'package:flutter/material.dart';

class PesananBaruPage extends StatelessWidget {
  const PesananBaruPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
        ));
  }
}
