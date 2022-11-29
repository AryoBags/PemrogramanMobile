import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.name,
    required this.price,
    required this.code,
  }) : super(key: key);

  final String name;
  final int price;
  final String code;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(child: Text(name)),
          Expanded(
              child: Text(
            "Rp. " + price.toString(),
            textAlign: TextAlign.center,
          )),
          Expanded(
              child: Text(
            code,
            textAlign: TextAlign.end,
          ))
        ],
      ),
    ));
  }
}
