import 'package:flutter/material.dart';
import 'package:navigasi_rute_daftarbelanja/pages/home_page.dart';
import 'package:navigasi_rute_daftarbelanja/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    title: ("BelanjaBumbu :) Aryo Bagus Shop"),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
