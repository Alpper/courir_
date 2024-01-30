
import 'package:courir_1/besin_list.dart';
import 'package:courir_1/besinler.dart';
import 'package:courir_1/hafta_egzersiz.dart';

import 'package:courir_1/bolgeler2.dart';
import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class anamenu extends StatelessWidget {
  final DataModel dataModel;
  anamenu({required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Image(image: AssetImage("assets/images/courir_logo.jpg")),
          ),
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => boolge(dataModel)));
                  },
                  child: Text(
                    "Egzersiz Planla",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => besinler(dataModel)));
                  },
                  child: Text(
                    "Beslenme Planla",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => egzersizbolgeler(dataModel)));
                  },
                  child: Text(
                    "Egzersiz Programı",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => besinlist(dataModel)));
                  },
                  child: Text(
                    "Beslenme Programı",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: Text(
                    "Çıkış",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
