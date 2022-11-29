import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konversi_suhu_dropdown/widgets/daftarSuhu.dart';
import 'package:konversi_suhu_dropdown/widgets/history.dart';
import 'package:konversi_suhu_dropdown/widgets/masukanSuhu.dart';
import 'package:konversi_suhu_dropdown/widgets/konversi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController suhu = TextEditingController();
  double kelvin = 0, reamor = 0, input = 0;
  double hasil = 0;

  String selctDropdown = "Reamur";
  List<String> listSuhu = ["Kelvin", "Reamur", "Fahrenheit"];
  List<String> History = [];

  void onDropChange(Object? value) {
    return setState(() {
      selctDropdown = value.toString();

      if (suhu.text.isNotEmpty) {
        switch (selctDropdown) {
          case "Kelvin":
            hasil = int.parse(suhu.text) + 273;

            break;

          case "Reamur":
            hasil = int.parse(suhu.text) * 4 / 5;
            break;

          case "Fahrenheit":
            hasil = int.parse(suhu.text) * 9 / 5 + 32;
            break;
          default:
        }
        History.add("hasil " +
            suhu.text +
            " Celcius Ke " +
            selctDropdown +
            " = " +
            hasil.toString());
      }
    });
  }

  void Konversi() {
    return setState(() {
      if (suhu.text.isNotEmpty) {
        switch (selctDropdown) {
          case "Kelvin":
            hasil = int.parse(suhu.text) + 273;

            break;

          case "Reamur":
            hasil = int.parse(suhu.text) * 4 / 5;
            break;

          case "Fahrenheit":
            hasil = int.parse(suhu.text) * 9 / 5 + 32;
            break;
          default:
        }
        History.add("Hasil" +
            suhu.text +
            " Celcius Ke " +
            selctDropdown +
            " =" +
            hasil.toString());
      }
    });
  }

  double konverisuhu = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Konversi Suhu')),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            children: [
              Slider(
                  value: konverisuhu,
                  max: 100,
                  divisions: 200,
                  label: konverisuhu.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      konverisuhu = value;
                      suhu.text = konverisuhu.toString();
                    });
                  }),
              // masukkanSuhu(suhu: suhu),
              // daftarSuhu(
              //   selctDropdown: selctDropdown,
              //   listSuhu: listSuhu,
              //   onDropChange: onDropChange,
              // ),
              daftarSuhu(
                selctDropdown: selctDropdown,
                listSuhu: listSuhu,
                onDropChange: onDropChange,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hasil',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "$hasil",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              konversi(
                Kversi: Konversi,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "History ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              history(riwayat: History)
            ],
          ),
        ),
      ),
    );
  }
}
