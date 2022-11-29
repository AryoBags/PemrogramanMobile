import 'package:flutter/material.dart';
import 'package:navigasi_rute_daftarbelanja/models/item.dart';
import '../widgets/listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, barcode: 'ARY00001'),
    Item(name: 'Salt', price: 2000, barcode: 'ARY00002'),
    Item(name: 'Peper', price: 3000, barcode: 'ARY00003'),
    Item(name: 'Spice', price: 4000, barcode: 'ARY00004'),
    Item(name: 'Chile', price: 10000, barcode: 'ARY00005')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BelanjaBumbu :) Aryo Bagus Shop"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: MyListView(
            items: items,
            page: '/item',
          ),
        ));
  }
}
