import 'package:flutter/material.dart';

class konversi extends StatelessWidget {
  const konversi({
    Key? key,
    required this.Kversi,
  }) : super(key: key);

  final Function Kversi;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Kversi();
              },
              child: Text(
                "Konversi",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
