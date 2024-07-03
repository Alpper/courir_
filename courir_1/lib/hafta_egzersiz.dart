import 'package:courir_1/anamenu.dart';
import 'package:courir_1/besin_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class egzersizbolgeler extends StatelessWidget {
  final DataModel dataModel;

  egzersizbolgeler(this.dataModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => besinlist(dataModel),
                      ),
                    );
                  },
                  child: Text("Beslenme Programı"),
                ),
                PopupMenuItem(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: Text("Uygulamadan Çık"),
                ),
              ];
            }),
          ),
        ],
        leading: BackButton(
          color: Colors.white,
          
        ),
        title: Text('Egzersiz Programı', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey.shade900,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildList("Pazartesi", dataModel.pazartesiList),
              buildList("Salı", dataModel.saliList),
              buildList("Çarşamba", dataModel.carsambaList),
              buildList("Perşembe", dataModel.persembeList),
              buildList("Cuma", dataModel.cumaList),
              buildList("Cumartesi", dataModel.cumartesiList),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList(String title, List<String> list) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Container(
          height: 150.0 + list.length * 30.0,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Container(
                height: 30.0,
                color: Colors.grey.shade400,
                margin: EdgeInsets.symmetric(vertical: 5.0),
                alignment: Alignment.center,
                child: Text(
                  list[index],
                  style: TextStyle(color: Colors.black),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
