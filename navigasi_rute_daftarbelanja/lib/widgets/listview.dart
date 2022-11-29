import 'package:flutter/material.dart';
import 'package:navigasi_rute_daftarbelanja/models/item.dart';
import 'package:navigasi_rute_daftarbelanja/widgets/card.dart';

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
    required this.items,
    required this.page,
  }) : super(key: key);

  final List<Item> items;
  final String page;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, page, arguments: item);
          },
          child: MyCard(
            name: item.name,
            price: item.price,
            code: item.barcode,
          ),
        );
      },
    );
  }
}
