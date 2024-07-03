import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class bacak extends StatelessWidget {
 final DataModel dataModel;

  bacak(this.dataModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(
          color: Colors.white,
        ),
        title:
            Text("Bacak Egzersizleri", style: TextStyle(color: Colors.white)),
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
                          image: AssetImage("assets/bacak/Barbell-Deadlift.gif"),
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
                                "Barbell Deadlift, halterin yerden kaldırılıp tekrar yere konulması şeklinde gerçekleştirilen bir ağırlık antrenmanıdır. Ayaklar omuz genişliğinde, sırt düz, bel biraz kavisli bir şekilde durularak halter iki ellerle yere kadar indirilir, ardından bel ve kalça kasları kullanılarak kaldırılır. Bu hareket, bacak, sırt, kalça ve bel kaslarını hedefler ve genel vücut gücünü artırmaya yöneliktir."),
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
                          image: AssetImage("assets/bacak/BARBELL-SQUAT.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Squat"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Spor salonunda gördüğünüz en popüler göğüs egzersizlerinden biri olan Dumbbell fly egzersizi, pektoralis majör ve daha küçük olan pektoralis minör kaslarının çalışması için çok etkilidir. Belirgin ve daha parçalanmış bir göğüs kası istiyorsanız yapmanız gereken en iyi egzersizlerden biridir."),
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
              dataModel.pazartesiList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Squat');
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
                          image: AssetImage("assets/bacak/dumbbell-lunges.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Squat"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Dumbbell lunges, bacak ve kalça kaslarını güçlendirmek için yapılan bir egzersizdir. İki dambıl kullanarak öne büyük adımlar atılır, her bacakla tekrarlanır. Dik duruşa dikkat edilerek, her adımda ileriye atılan bacakla birlikte vücut ağırlığı taşınır ve ardından diğer bacakla tekrarlanır. Bu egzersiz denge, koordinasyon ve alt vücut kuvvetini artırmaya yardımcı olur."),
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
              dataModel.pazartesiList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Squat');
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
                              "assets/bacak/Leg-Curl.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Squat"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Leg curl, arka bacak kaslarını çalıştıran bir egzersizdir. Genellikle bir leg curl makinesi kullanılır. Bacaklar kalçadan bükülerek top veya makine rulosu çekilir, ardından kontrolle başlangıç pozisyonuna dönülür. Egzersiz hamstring kaslarını güçlendirmeye yöneliktir.."),
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
              dataModel.pazartesiList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Squat');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Squat');
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
                          image: AssetImage("assets/bacak/LEG-EXTENSION.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Leg Extension"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Leg extension, ön bacak kaslarına odaklanan bir direnç egzersizidir. Genellikle bir leg extension makinesi kullanılır. Ayaklar, makinenin rulosuna bağlı olarak öne doğru düz bir şekilde itilir, dizler kilitlenir ve ardından kontrolle başlangıç pozisyonuna dönülür. Bu egzersiz, quadriceps kaslarını güçlendirmek için etkilidir."),
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
              dataModel.pazartesiList.add('Leg Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Leg Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Leg Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Leg Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Leg Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Leg Extension');
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
                              "assets/bacak/Leg-Press.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Leg Press"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Leg press, bacak kaslarını güçlendirmek için yapılan bir direnç egzersizidir. Genellikle leg press makinesinde uygulanır. Bacaklar, ayaklar makinenin platformuna yerleştirilerek dirence karşı itilir ve ardından kontrolle başlangıç pozisyonuna dönülür. Bu egzersiz, quadriceps, hamstring ve kalça kaslarını etkili bir şekilde çalıştırmaya yöneliktir."),
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
              dataModel.pazartesiList.add('Leg Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Leg Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Leg Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Leg Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Leg Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Leg Press');
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
                          image: AssetImage("assets/bacak/Barbell-Sumo-Deadlift.gif"),
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
                                "Barbell Sumo Deadlift, bacak ve kalça kaslarını güçlendirmek için yapılan bir kaldırma egzersizidir. Bacakları geniş bir açıyla, barbell'ı ise vücudun önünde yer alan bir sumo güreşi duruşuyla kaldırmayı içerir. Dizler hafifçe bükülü, sırt düz ve bel kavisli bir şekilde durulur. Barbell yere kadar indirilir, ardından kontrolle kaldırılır. Bu egzersiz, özellikle iç bacak, hamstring ve bel kaslarını hedefler."),
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
  } */
