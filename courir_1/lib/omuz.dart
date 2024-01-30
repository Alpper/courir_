import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class omuz extends StatelessWidget {
  final DataModel dataModel;

  omuz(this.dataModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title:
            Text("Omuz Egzersizleri", style: TextStyle(color: Colors.white)),
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
                          image: AssetImage("assets/omuz/Alternating-Dumbbell-Front-Raise.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Alternating Dumbbell Front Raise"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Alternating Dumbbell Front Raise, omuz kaslarını hedefleyen bir egzersizdir. Her elde bir dambıl tutularak, sırayla kollar öne kaldırılır. Bu hareket omuz ön kısmını güçlendirmeye yöneliktir."),
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
              dataModel.pazartesiList.add('Alternating Dumbbell Front Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Alternating Dumbbell Front Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Alternating Dumbbell Front Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Alternating Dumbbell Front Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Alternating Dumbbell Front Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Alternating Dumbbell Front Raise');
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
                          image: AssetImage("assets/omuz/Bent-Over-Lateral-Raise.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Bent Over Lateral Raise"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Bent-Over Lateral Raise, sırtüstü eğilerek yapılan bir omuz egzersizidir. Dambıllar her iki elde tutularak, vücut öne eğilir ve ardından kolları yanlara doğru kaldırılır. Bu hareket, omuz yan kısmını güçlendirmeye odaklanır."),
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
              dataModel.pazartesiList.add('Bent Over Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Bent Over Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Bent Over Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Bent Over Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Bent Over Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Bent Over Lateral Raise');
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
                          image: AssetImage("assets/omuz/Cable-Upright-Row.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Cable Upright Row"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Cable Upright Row, omuzları hedefleyen bir egzersizdir. Kablo makinesi kullanılarak, kollar vücut yanlarında tutulur ve kabloyu yukarı doğru çekerek omuzları kaldırılır. Bu hareket, omuz üst kısmını güçlendirmeye odaklanır."),
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
              dataModel.pazartesiList.add('Cable Upright Row');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Cable Upright Row');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Cable Upright Row');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Cable Upright Row');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Cable Upright Row');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Cable Upright Row');
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
                              "assets/omuz/Dumbbell-Lateral-Raise.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Dumbbell Lateral Raise"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Dumbbell Lateral Raise, omuzları güçlendirmek için yapılan bir egzersizdir. Her iki elde birer dambıl tutularak, kollar vücut yanında dik bir şekilde yanlara doğru kaldırılır. Bu hareket, omuz dış kısmını hedefler."),
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
              dataModel.pazartesiList.add('Dumbbell Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Dumbbell Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Dumbbell Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Dumbbell Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Dumbbell Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Dumbbell Lateral Raise');
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
                          image: AssetImage("assets/omuz/Dumbbell-Shoulder-Press.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Dumbbell Shoulder Press"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Dumbbell Shoulder Press, omuzları güçlendirmek için yapılan bir egzersizdir. Her iki elde birer dambıl tutularak, kollar omuz hizasında kaldırılır. Dambıllar başın üzerinde birleştirilir ve ardından kontrolle başlangıç pozisyonuna indirilir. Bu hareket, omuzların genel gücünü artırmaya odaklanır."),
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
              dataModel.pazartesiList.add('Dumbbell Shoulder Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Dumbbell Shoulder Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Dumbbell Shoulder Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Dumbbell Shoulder Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Dumbbell Shoulder Press');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Dumbbell Shoulder Press');
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
                              "assets/omuz/Cable-Lateral-Raise.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Cable Lateral Raise"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Cable Lateral Raise, omuzları güçlendirmek için yapılan bir egzersizdir. Kablo makinesi kullanılarak, kollar vücut yanında tutulur ve kabloları yanlara doğru kaldırarak omuzları çalıştırılır. Bu hareket, omuz dış kısmını hedefler."),
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
              dataModel.pazartesiList.add('Cable Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Cable Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Cable Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Cable Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Cable Lateral Raise');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Cable Lateral Raise');
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
                          image: AssetImage("assets/omuz/Rear-Delt-Machine-Flys.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Rear Delt Machine Flys"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Rear Delt Machine Flys, arka omuz kaslarını (rear deltoids) çalıştırmak için yapılan bir egzersizdir. Makineye yüzüstü veya eğik bir şekilde yerleşilir, ardından kolları makineye bağlı dirençle geriye doğru açılır. Bu hareket, omuzların arka kısmını güçlendirmeye odaklanır."),
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
              dataModel.pazartesiList.add('Rear Delt Machine Flys');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Rear Delt Machine Flys');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Rear Delt Machine Flys');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Rear Delt Machine Flys');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Rear Delt Machine Flys');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Rear Delt Machine Flys');
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