import 'package:courir_1/anamenu.dart';
import 'package:courir_1/besin_list.dart';
import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class besinler extends StatelessWidget {
  final DataModel dataModel;

  besinler(this.dataModel);

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
                        builder: (context) => besinlist(dataModel),
                      ),
                    );
                  },
                  child: Text("Beslenme Programı"),
                ),
              ];
            }),
          ),
        ],
        title: Text("Besin Listesi", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "YUMURTA",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/yumurta.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Kalori: 68 kcal\n'
                              'Protein: 5.5 gram\n'
                              'Yağ: 4.8 gram\n'
                              'Doymuş Yağ: 1.6 gram\n'
                              'Tekli Doymamış Yağ: 2.0 gram\n'
                              'Çoklu Doymamış Yağ: 0.7 gram\n'
                              'Karbonhidrat: 0.6 gram\n'
                              'Lif: 0 gram\n'
                              'Şeker: 0.6 gram\n'
                              'Kolesterol: 186 mg\n'
                              'Sodyum: 70 mg\n'
                              'Potasyum: 69 mg',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Yumurta');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Yumurta');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Yumurta');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "Öğüne Ekle",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "BAL",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/bal.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text('Enerji: 304 kcal\n'
                                'Su: 17.10 g\n'
                                'Protein: 0.30 g\n'
                                'Toplam Yağ: 0.00 g\n'
                                'Doymuş Yağ: 0.00 g\n'
                                'Tekli Doymamış Yağ: 0.00 g\n'
                                'Çoklu Doymamış Yağ: 0.00 g\n'
                                'Karbonhidratlar: 82.40 g\n'
                                'Şeker: 82.12 g\n'
                                'Lif: 0.2 g\n'
                                'Vitaminler ve Mineraller:\n'
                                'Kalsiyum: 6 mg\n'
                                'Demir: 0.42 mg\n'
                                'Magnezyum: 2 mg\n'
                                'Fosfor: 4 mg\n'
                                'Potasyum: 52 mg\n'
                                'Sodyum: 4 mg\n'
                                'C vitamini: 0.5 mg\n'),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Bal');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Bal');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Bal');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "BALIK",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/balık.jpg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 90-100 kcal\n'
                              'Protein: 18-20 gram\n'
                              'Toplam Yağ: 2-5 gram\n'
                              'Doymuş Yağ: 0.5-1 gram\n'
                              'Tekli Doymamış Yağ: 1-2 gram\n'
                              'Çoklu Doymamış Yağ: 0.5-1.5 gram',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Balık');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Balık');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Balık');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "BİBER",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/biber.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 31 kcal\n'
                              'Protein: 1.3 g\n'
                              'Toplam Yağ: 0.3 g\n'
                              'Doymuş Yağ: 0.1 g\n'
                              'Tekli Doymamış Yağ: 0.0 g\n'
                              'Çoklu Doymamış Yağ: 0.1 g\n'
                              'Karbonhidratlar: 6.0 g\n'
                              'Şeker: 4.7 g\n'
                              'Lif: 2.1 g\n'
                              'Vitaminler ve Mineraller:\n'
                              'C vitamini: 127.7 mg (Yüksek miktarda C vitamini içerir.)\n'
                              'A vitamini: 7.6 µg\n'
                              'K vitamini: 14.0 µg\n'
                              'B6 vitamini: 0.3 mg\n',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Biber');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Biber');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Biber');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "BUDAY",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/buğday.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 123 kcal\n'
                              'Protein: 3.15 g\n'
                              'Toplam Yağ: 1.05 g\n'
                              'Doymuş Yağ: 0.21 g\n'
                              'Tekli Doymamış Yağ: 0.27 g\n'
                              'Çoklu Doymamış Yağ: 0.48 g\n'
                              'Karbonhidratlar: 25.58 g\n'
                              'Lif: 3.9 g\n'
                              'Şeker: 0.41 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Buday');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Buday');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Buday');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "EKMEK",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/dilim-ekmek.webp",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 265 kcal\n'
                              'Protein: 8 g\n'
                              'Toplam Yağ: 1 g\n'
                              'Doymuş Yağ: 0.2 g\n'
                              'Tekli Doymamış Yağ: 0.1 g\n'
                              'Çoklu Doymamış Yağ: 0.4 g\n'
                              'Karbonhidratlar: 50 g\n'
                              'Lif: 2.7 g\n'
                              'Şeker: 4 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Ekmek');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Ekmek');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Ekmek');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "DOMATES",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/domates.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 18 kcal\n'
                              'Protein: 1 g\n'
                              'Toplam Yağ: 0.2 g\n'
                              'Doymuş Yağ: 0 g\n'
                              'Tekli Doymamış Yağ: 0.1 g\n'
                              'Çoklu Doymamış Yağ: 0.1 g\n'
                              'Karbonhidratlar: 3.9 g\n'
                              'Lif: 1.2 g\n'
                              'Şeker: 2.6 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Domates');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Domates');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Domates');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "KIRMIZI ET",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/et.jpg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri(100 gram)"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 250-300 kcal\n'
                              'Protein: 25-30 gram\n'
                              'Toplam Yağ: 15-25 gram\n'
                              'Doymuş Yağ: 6-10 gram\n'
                              'Tekli Doymamış Yağ: 7-11 gram\n'
                              'Çoklu Doymamış Yağ: 1-2 gram\n'
                              'Kolesterol: 70-100 mg\n'
                              'Demir: 2-3 mg\n'
                              'Çinko: 4-5 mg\n'
                              'B12 Vitamini: 2-3 µg',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Kırmızı Et');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Kırmızı Et');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Kırmızı Et');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "FASULYE",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/fasulye.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 120 kcal\n'
                              'Protein: 7.5 g\n'
                              'Toplam Yağ: 0.5 g\n'
                              'Doymuş Yağ: 0.1 g\n'
                              'Tekli Doymamış Yağ: 0.1 g\n'
                              'Çoklu Doymamış Yağ: 0.2 g\n'
                              'Karbonhidratlar: 21.4 g\n'
                              'Lif: 7.6 g\n'
                              'Şeker: 2.2 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Fasulye');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Fasulye');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Fasulye');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "FINDIK EZMESİ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/fındıkezmesi.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri(100 gram)"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 600-700 kcal\n'
                              'Protein: 15-20 gram\n'
                              'Toplam Yağ: 50-60 gram\n'
                              'Doymuş Yağ: 4-6 gram\n'
                              'Tekli Doymamış Yağ: 30-40 gram\n'
                              'Çoklu Doymamış Yağ: 10-15 gram\n'
                              'Karbonhidratlar: 15-20 gram\n'
                              'Lif: 8-12 gram\n'
                              'Şeker: 4-6 gram',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Fındık Ezmesi');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Fındık Ezmesi');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Fındık Ezmesi');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "FISTIK EZMESİ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/fıstıkezmesi.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 580-650 kcal\n'
                              'Protein: 25-30 gram\n'
                              'Toplam Yağ: 47-50 gram\n'
                              'Doymuş Yağ: 7-10 gram\n'
                              'Tekli Doymamış Yağ: 24-28 gram\n'
                              'Çoklu Doymamış Yağ: 10-12 gram\n'
                              'Karbonhidratlar: 20-25 gram\n'
                              'Lif: 7-9 gram\n'
                              'Şeker: 6-8 gram',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Fıstık Ezmesi');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Fıstık Ezmesi');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Fıstık Ezmesi');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "HAVUÇ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/havuc.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 41 kcal\n'
                              'Protein: 0.9 g\n'
                              'Toplam Yağ: 0.2 g\n'
                              'Doymuş Yağ: 0.0 g\n'
                              'Tekli Doymamış Yağ: 0.0 g\n'
                              'Çoklu Doymamış Yağ: 0.1 g\n'
                              'Karbonhidratlar: 10.0 g\n'
                              'Lif: 2.8 g\n'
                              'Şeker: 4.7 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Havuç');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Havuç');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Havuç');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "KABAK",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/kabak.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: Yaklaşık 33 kcal\n'
                              'Protein: Yaklaşık 1.4 g\n'
                              'Toplam Yağ: Yaklaşık 0.6 g\n'
                              'Doymuş Yağ: Yaklaşık 0.1 g\n'
                              'Tekli Doymamış Yağ: Yaklaşık 0.1 g\n'
                              'Çoklu Doymamış Yağ: Yaklaşık 0.2 g\n'
                              'Karbonhidratlar: Yaklaşık 6.7 g\n'
                              'Lif: Yaklaşık 2.4 g\n'
                              'Şeker: Yaklaşık 3.9 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Kabak');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Kabak');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Kabak');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "MAKARNA",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/makarna.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 160 kcal\n'
                              'Protein: 5.8 gram\n'
                              'Toplam Yağ: 0.6 gram\n'
                              'Doymuş Yağ: 0.1 gram\n'
                              'Tekli Doymamış Yağ: 0.1 gram\n'
                              'Çoklu Doymamış Yağ: 0.2 gram\n'
                              'Karbonhidratlar: 33.5 gram\n'
                              'Lif: 2.0 gram\n'
                              'Şeker: 0.6 gram',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Makarna');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Makarna');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Makarna');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "MERCİMEK",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/mercimek.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri(100 gram)"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 116 kcal\n'
                              'Protein: 9.0 gram\n'
                              'Toplam Yağ: 0.4 gram\n'
                              'Doymuş Yağ: 0.1 gram\n'
                              'Tekli Doymamış Yağ: 0.1 gram\n'
                              'Çoklu Doymamış Yağ: 0.2 gram\n'
                              'Karbonhidratlar: 20.1 gram\n'
                              'Lif: 7.9 gram\n'
                              'Şeker: 1.8 gram',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Mercimek');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Mercimek');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Mercimek');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "PEKMEZ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/pekmez.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 40 kcal\n'
                              'Toplam Karbonhidratlar: 10 gram\n'
                              'Şeker: 10 gram',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Pekmez');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Pekmez');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Pekmez');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "PEYNİR",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/peynir.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 300-400 kcal arasında değişebilir.\n'
                              'Protein: 20-30 gram arasında değişebilir.\n'
                              'Toplam Yağ: 20-35 gram arasında değişebilir.\n'
                              'Doymuş Yağ: 10-20 gram arasında değişebilir.\n'
                              'Tekli Doymamış Yağ: 8-12 gram arasında değişebilir.\n'
                              'Çoklu Doymamış Yağ: 0.5-2 gram arasında değişebilir.',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Peynir');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Peynir');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Peynir');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "PİRİNÇ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/prinç.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri(100 gram)"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 130-150 kcal\n'
                              'Protein: 2-3 gram\n'
                              'Toplam Yağ: 0.3-0.5 gram\n'
                              'Doymuş Yağ: 0.1 gram\n'
                              'Tekli Doymamış Yağ: 0.1 gram\n'
                              'Çoklu Doymamış Yağ: 0.1 gram\n'
                              'Karbonhidratlar: 28-30 gram\n'
                              'Lif: 0.4-0.6 gram\n'
                              'Şeker: 0.1 gram',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Pirinç');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Pirinç');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Pirinç');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "SALATALIK",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/salatalık.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: Yaklaşık 48 kcal\n'
                              'Protein: Yaklaşık 2.1 g\n'
                              'Toplam Yağ: Yaklaşık 0.6 g\n'
                              'Doymuş Yağ: Yaklaşık 0.1 g\n'
                              'Tekli Doymamış Yağ: Yaklaşık 0.1 g\n'
                              'Çoklu Doymamış Yağ: Yaklaşık 0.2 g\n'
                              'Karbonhidratlar: Yaklaşık 10.9 g\n'
                              'Lif: Yaklaşık 1.5 g\n'
                              'Şeker: Yaklaşık 4.9 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Salatalık');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Salatalık');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Salatalık');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "SUCUK",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/sucuk.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 400-500 kcal\n'
                              'Protein: 20-30 gram\n'
                              'Toplam Yağ: 30-40 gram\n'
                              'Doymuş Yağ: 10-15 gram\n'
                              'Tekli Doymamış Yağ: 12-18 gram\n'
                              'Çoklu Doymamış Yağ: 2-5 gram\n'
                              'Kolesterol: 50-100 mg\n'
                              'Tuz: 3-5 gram',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Sucuk');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Sucuk');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Sucuk');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "SÜT",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/sut.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri(100 ml)"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 42 kcal\n'
                              'Protein: 3.4 g\n'
                              'Toplam Yağ: 2.0 g\n'
                              'Doymuş Yağ: 1.2 g\n'
                              'Tekli Doymamış Yağ: 0.6 g\n'
                              'Çoklu Doymamış Yağ: 0.1 g\n'
                              'Kolesterol: 12 mg\n'
                              'Karbonhidratlar: 4.8 g\n'
                              'Şeker: 4.8 g\n'
                              'Sodyum: 41 mg\n'
                              'Kalsiyum: 120 mg',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Süt');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Süt');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Süt');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "TAVUK",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/tavuk.jpg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri(100 gram)"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 165 kcal\n'
                              'Protein: 31 g\n'
                              'Toplam Yağ: 3.6 g\n'
                              'Doymuş Yağ: 1 g\n'
                              'Tekli Doymamış Yağ: 1.2 g\n'
                              'Çoklu Doymamış Yağ: 0.9 g\n'
                              'Kolesterol: 85 mg\n'
                              'Sodyum: 74 mg\n'
                              'Potasyum: 256 mg\n'
                              'Karbonhidratlar: 0 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Tavuk');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Tavuk');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Tavuk');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "YULAF",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/yulaf.jpg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 389 kcal\n'
                              'Protein: 16.9 g\n'
                              'Toplam Yağ: 6.9 g\n'
                              'Doymuş Yağ: 1.2 g\n'
                              'Tekli Doymamış Yağ: 2.2 g\n'
                              'Çoklu Doymamış Yağ: 2.5 g\n'
                              'Karbonhidratlar: 66.3 g\n'
                              'Lif: 10.6 g\n'
                              'Şeker: 0.9 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Yulaf');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Yulaf');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Yulaf');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    "ZEYTİN",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/besinler/zeytin.jpeg",
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Besin Değerleri(100 gram)"),
                          content: SingleChildScrollView(
                            child: Text(
                              'Enerji: 115 kcal\n'
                              'Protein: 0.9 g\n'
                              'Toplam Yağ: 10.7 g\n'
                              'Doymuş Yağ: 1.5 g\n'
                              'Tekli Doymamış Yağ: 7.7 g\n'
                              'Çoklu Doymamış Yağ: 0.9 g\n'
                              'Karbonhidratlar: 6.3 g\n'
                              'Lif: 3.2 g\n'
                              'Şeker: 0 g',
                            ),
                          ),
                        );
                      });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('SABAH'),
                            onTap: () {
                              dataModel.sabahList.add('Zeytin');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('ÖĞLEN'),
                            onTap: () {
                              dataModel.oglenList.add('Zeytin');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('AKŞAM'),
                            onTap: () {
                              dataModel.aksamList.add('Zeytin');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child:
                    Text("Öğüne Ekle", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

/* class popup_1 extends StatefulWidget {
  const popup_1({super.key});

  @override
  State<popup_1> createState() => _popup_1State();
}

class _popup_1State extends State<popup_1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Text("Ana Menü"),
          ),
          PopupMenuItem(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => besinlist(dataModel),
                ),
              );
            },
            child: Text("Beslenme Programı"),
          ),
        ];
      }),
    );
  }
}
 */
