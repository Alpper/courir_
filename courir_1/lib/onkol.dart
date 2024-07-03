import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class onkol extends StatelessWidget {
  final DataModel dataModel;

  onkol(this.dataModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title:
            Text("Göğüs Egzersizleri", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage("assets/onkol/Barbell-Curl.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Curl"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Barbell Curl, biceps kaslarını çalıştırmak için yapılan temel bir egzersizdir. Ayaklar omuz genişliğinde açılarak, bir barbell eller arasında tutulur ve kollar yavaşça bükülerek barbell yukarı çekilir. Bu hareket, biceps kaslarını güçlendirmek ve şekillendirmek için uygulanır."),
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
            title: Text('Pazartesi'),
            onTap: () {
              dataModel.pazartesiList.add('Barbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Curl');
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
                },
                child: Text(
                  "Programa Ekle",
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
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage("assets/onkol/Dumbbell-Curl.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Dumbbell Curl"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Dumbbell Curl, biceps kaslarını hedefleyen bir egzersizdir. Her iki elde birer dambıl tutularak, kollar dirseklere sabitlenir ve dambıllar yavaşça yukarı çekilir. Bu hareket, biceps kaslarını güçlendirmek ve tonlamak için yapılır."),
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
            title: Text('Pazartesi'),
            onTap: () {
              dataModel.pazartesiList.add('Dumbbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Dumbbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Dumbbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Dumbbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Dumbbell Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Dumbbell Curl');
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
                },
                child: Text(
                  "Programa Ekle",
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
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage("assets/onkol/overhead-cable-curl.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Overhead Cable Curl"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Overhead Cable Curl, biceps kaslarını kablo makinesiyle çalıştıran bir egzersizdir. Kollar başın üzerinden yukarı kaldırılır, biceps üst kısmı hedeflenir. Kontrollü bir şekilde uygulanmalıdır."),
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
            title: Text('Pazartesi'),
            onTap: () {
              dataModel.pazartesiList.add('Overhead Cable Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Overhead Cable Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Overhead Cable Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Overhead Cable Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Overhead Cable Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Overhead Cable Curl');
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
                },
                child: Text(
                  "Programa Ekle",
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
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/onkol/Reverse-Grip-EZ-Bar-Curl.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Reverse Grip EZ Bar Curl"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Reverse Grip EZ Bar Curl, biceps kaslarını hedefleyen bir egzersizdir. Eller, EZ çubuğunu ters (avuç içleri yukarı bakacak şekilde) tutar şekilde yerleştirilir. Bu çubukla kollar yukarı kaldırılarak biceps kasları çalıştırılır. Egzersiz, özellikle bicepsin alt kısmını vurgular."),
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
            title: Text('Pazartesi'),
            onTap: () {
              dataModel.pazartesiList.add('Reverse Grip EZ Bar Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Reverse Grip EZ Bar Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Reverse Grip EZ Bar Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Reverse Grip EZ Bar Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Reverse Grip EZ Bar Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Reverse Grip EZ Bar Curl');
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
                },
                child: Text(
                  "Programa Ekle",
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
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage("assets/onkol/rope-bicep-curls.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Rope Bicep Curls"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Rope Bicep Curls, biceps kaslarını çalıştırmak için kullanılan bir egzersizdir. Kablo makinesinde bir ip kullanılarak, avuç içleri vücuda bakacak şekilde ellerle ip çekilir. Kollar yavaşça bükülerek biceps kasları hedeflenir. Bu egzersiz, bicepsin dengeli bir şekilde çalışmasına katkıda bulunur."),
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
            title: Text('Pazartesi'),
            onTap: () {
              dataModel.pazartesiList.add('Rope Bicep Curls');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Rope Bicep Curls');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Rope Bicep Curls');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Rope Bicep Curls');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Rope Bicep Curls');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Rope Bicep Curls');
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
                },
                child: Text(
                  "Programa Ekle",
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
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/onkol/Z-Bar-Preacher-Curl.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Z-Bar Preacher Curl"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Z-Bar Preacher Curl, biceps kaslarını hedefleyen bir egzersizdir. Z-bar (zigzag bar) ile preacher bench üzerinde yapılır. Dirsekler, bench üzerine yerleştirilir ve Z-bar, kontrollü bir şekilde kaldırılarak biceps kasları çalıştırılır. Bu egzersiz, bicepsin ön kısmını güçlendirmeye odaklanır."),
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
            title: Text('Pazartesi'),
            onTap: () {
              dataModel.pazartesiList.add('Z-Bar Preacher Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Z-Bar Preacher Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Z-Bar Preacher Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Z-Bar Preacher Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Z-Bar Preacher Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Z-Bar Preacher Curl');
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
                },
                child: Text(
                  "Programa Ekle",
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
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                          color: Colors.black, width: 2), //etrafındaki çizgi
                      image: DecorationImage(
                          image: AssetImage("assets/onkol/zottman-curl.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Zottman Curl"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Zottman Curl, dambıl kullanılarak yapılan bir biceps egzersizidir. İlk başta avuç içleri içe dönük, ardından döndürülerek avuçlar dışa bakacak şekilde yapılır. Hem biceps hem de ön kol kaslarını çalıştırır."),
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
            title: Text('Pazartesi'),
            onTap: () {
              dataModel.pazartesiList.add('Zottman Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Zottman Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Zottman Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Zottman Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Zottman Curl');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Zottman Curl');
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
                },
                child: Text(
                  "Programa Ekle",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

