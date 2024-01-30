import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class kalca extends StatelessWidget {
  final DataModel dataModel;

  kalca(this.dataModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title:
            Text("Kalça Egzersizleri", style: TextStyle(color: Colors.white)),
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
                          image: AssetImage("assets/kalca/Barbell-Deadlift.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Deadlift"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Barbell Deadlift, bacak, sırt, kalça ve bel kaslarını güçlendirmek için yapılan temel bir kaldırma egzersizidir. Standart deadlift duruşunda, barbell'ı yere yaklaştırılıp ardından kontrolle kaldırılır. Dizler hafifçe bükülü, sırt düz ve bel kavisli bir pozisyonda tutulur. Bu egzersiz, vücut genelinde kuvvet ve dayanıklılığı artırmaya yöneliktir."),
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
              dataModel.pazartesiList.add('Barbell Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Deadlift');
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
                          image: AssetImage("assets/kalca/Barbell-Hip-Thrust.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Hip Thrust"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Barbell Hip Thrust, kalça kaslarını güçlendirmek için yapılan bir egzersizdir. Bu egzersizde sırt, bir yükseklikteki bir bankenin üzerine dayanır, barbell ise kalçaların üzerine yerleştirilir. Bacaklar bükülü, ardından kalçalar yukarı itilir ve üst vücut düz bir çizgide durur. Egzersiz, özellikle gluteus maximus kaslarını hedefler ve kalça kuvvetini artırır."),
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
              dataModel.pazartesiList.add('Barbell Hip Thrust');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Hip Thrust');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Hip Thrust');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Hip Thrust');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Hip Thrust');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Hip Thrust');
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
                          image: AssetImage("assets/kalca/Barbell-Romanian-Deadlift.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Romanian Deadlift"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Barbell Romanian Deadlift, bel ve hamstring kaslarını güçlendiren bir kaldırma egzersizidir. Barbell bacak önünde tutularak, hafifçe bükülmüş dizlerle sırt düz bir şekilde öne eğilip kaldırılır. Bu egzersiz, bel kuvvetini ve hamstring esnekliğini artırmaya yöneliktir."),
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
              dataModel.pazartesiList.add('Barbell Romanian Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Romanian Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Romanian Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Romanian Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Romanian Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Romanian Deadlift');
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
                              "assets/kalca/Barbell-Sumo-Deadlift.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Sumo Deadlift"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Barbell Sumo Deadlift, bacak ve kalça kaslarını güçlendiren bir kaldırma egzersizidir. Bacakları geniş açıda açarak, barbell'ı yere yaklaştırılıp kaldırma esasına dayanır. Bu egzersiz iç bacak, hamstring ve bel kaslarını etkili bir şekilde çalıştırır."),
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
              dataModel.pazartesiList.add('Barbell Sumo Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Sumo Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Sumo Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Sumo Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Sumo Deadlift');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Sumo Deadlift');
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
                          image: AssetImage("assets/kalca/Bulgarian-Jump-Squat.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Bulgarian Jump Squat"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Bulgarian Jump Squat, bacak ve kalça kaslarını güçlendirmek için yapılan bir sıçrama egzersizidir. Tek bacak geride, diğer bacak önde durarak squat pozisyonunda sıçranır. Alt vücut gücünü ve koordinasyonu artırmaya yöneliktir."),
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
              dataModel.pazartesiList.add('Bulgarian Jump Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Bulgarian Jump Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Bulgarian Jump Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Bulgarian Jump Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Bulgarian Jump Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Bulgarian Jump Squat');
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
                              "assets/kalca/Glute-Kickback-Machine.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Glute Kickback Machine"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Glute Kickback Machine, kalça kaslarını çalıştırmak için kullanılan bir makine egzersizidir. Ayaklar, makinelerdeki pedallara bağlı olarak geriye doğru itilir. Bu egzersiz, gluteus kaslarını güçlendirmek ve şekillendirmek için yapılır."),
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
              dataModel.pazartesiList.add('Bulgarian Jump Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Glute Kickback Machine');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Glute Kickback Machine');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Glute Kickback Machine');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Glute Kickback Machine');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Glute Kickback Machine');
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
                          image: AssetImage("assets/kalca/Reverse-Hack-Squat.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Reverse Hack Squat"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Reverse Hack Squat, bacakları güçlendirmek için yapılan bir egzersizdir. Squat makinesinde, ayaklar ön tarafta olacak şekilde squat pozisyonu alınıp kaldırma hareketi yapılır. Bu egzersiz, quadriceps ve gluteus kaslarını hedefler."),
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
              dataModel.pazartesiList.add('Reverse Hack Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Reverse Hack Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Reverse Hack Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Reverse Hack Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Reverse Hack Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Reverse Hack Squat');
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

/* void _showDayPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Pazartesi'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Salı'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Çarşamba'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Perşembe'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Cuma'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Cumartesi'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
 */