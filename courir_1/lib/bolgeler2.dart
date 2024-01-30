import 'package:courir_1/abs.dart';
import 'package:courir_1/anamenu.dart';
import 'package:courir_1/arkakol.dart';
import 'package:courir_1/bacak.dart';
import 'package:courir_1/gogus.dart';
import 'package:courir_1/hafta_egzersiz.dart';
import 'package:courir_1/kalca.dart';
import 'package:courir_1/main.dart';
import 'package:courir_1/omuz.dart';
import 'package:courir_1/onkol.dart';
import 'package:courir_1/sirt.dart';
import 'package:flutter/material.dart';

class boolge extends StatelessWidget {
  final DataModel dataModel;

  boolge(this.dataModel);

  String arkakoll =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_13.jpeg";
  String onkoll =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_12.jpeg";
  String goguss =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_15.jpeg";
  String bacakk =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_8.jpeg";
  String kalcaa =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_10.jpeg";
  String sirtt =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_16.jpeg";
  String omuzz =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_17.jpeg";
  String abss =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_19.jpeg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        actions: [
          Center(
            child: PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => egzersizbolgeler(dataModel),
                      ),
                    );
                  },
                  child: Text("Egzersiz Programı"),
                ),
              ];
            }),
          ),
        ],
        title:
            Text("Egzersiz Bölgeleri", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(goguss),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Göğüs",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => gogus(dataModel)));
                },
              ),
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(omuzz),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Omuz",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => omuz(dataModel)));
                },
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(sirtt),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Sırt",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sirt(dataModel)));
                },
              ),
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(bacakk),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Bacak",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => bacak(dataModel)));
                },
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(onkoll),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Ön Kol",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => onkol(dataModel)));
                },
              ),
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(arkakoll),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Arka Kol",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => arkakol(dataModel)));
                },
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(kalcaa),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Kalça",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => kalca(dataModel)));
                },
              ),
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(abss),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Abs",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => abs(dataModel)));
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
