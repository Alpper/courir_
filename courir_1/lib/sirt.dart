import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class sirt extends StatelessWidget {
  final DataModel dataModel;

  sirt(this.dataModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text("Sırt Egzersizleri", style: TextStyle(color: Colors.white)),
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
                          image: AssetImage(
                              "assets/sirt/Barbell-Bent-Over-Row.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Bent Over Row"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Barbell Bent-Over Row, sırt ve üst sırt kaslarını çalıştıran bir egzersizdir. Bel hizasında eğilerek barbell'ı kavrar, ardından dirsekleri bükerek çubuğu göğüs bölgesine çeker ve tekrar aşağı indirirsiniz. Bu hareket, sırt kaslarını güçlendirmeye ve vücut duruşunu geliştirmeye yöneliktir."),
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
                              dataModel.pazartesiList
                                  .add('Barbell Bent Over Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Barbell Bent Over Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList
                                  .add('Barbell Bent Over Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList
                                  .add('Barbell Bent Over Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Barbell Bent Over Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList
                                  .add('Barbell Bent Over Row');
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
                              "assets/sirt/close-grip-cable-row.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Close Grip Cable Row"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Close-Grip Cable Row, iç sırt kaslarını geliştirmek için kullanılan bir kablo makinesi egzersizidir. Dar tutuşla, kolları gövdeye doğru çekerek gerçekleştirilir. Dirsekleri vücuda yakın tutmak ve sırtı dik tutmak önemlidir."),
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
                              dataModel.pazartesiList
                                  .add('Close Grip Cable Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Close Grip Cable Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList
                                  .add('Close Grip Cable Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList
                                  .add('Close Grip Cable Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Close Grip Cable Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList
                                  .add('Close Grip Cable Row');
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
                          image: AssetImage("assets/sirt/Dumbbell-Row.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Dumbbell Row"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Dumbbell Row, sırt kaslarını güçlendirmek için yapılan bir egzersizdir. Her iki elde birer dambıl tutularak, vücut öne eğilir ve dambıllar vücut ağırlığına karşı çekilir. Bu hareket, sırtın orta ve alt kısımlarını hedefler."),
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
                              dataModel.pazartesiList.add('Dumbbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Dumbbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList.add('Dumbbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList.add('Dumbbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Dumbbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList.add('Dumbbell Row');
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
                          image: AssetImage("assets/sirt/Front-Pulldown.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Front Pulldown"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Front Pulldown, sırt kaslarını güçlendirmek için kullanılan bir egzersizdir. Kablo makinesi üzerinde bulunan çubuk veya sap kullanılarak, kollar yukarı doğru çekilir. Bu hareket, latissimus dorsi (geniş sırt kasları) ve diğer üst sırt kaslarını hedefler. Dirseklerinizi bükerek çubuğu göğsünüze doğru çeker ve ardından kontrollü bir şekilde yukarı kaldırırsınız.."),
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
                              dataModel.pazartesiList.add('Front Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Front Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList.add('Front Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList.add('Front Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Front Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList.add('Front Pulldown');
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
                              "assets/sirt/One-Arm-Barbell-Row-.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("One Arm Barbell Row"),
                          content: SingleChildScrollView(
                            child: Text(
                                "One-Arm Barbell Row, sırt kaslarını çalıştırmak için yapılan bir egzersizdir. Bir kol ile barbell tutularak, vücut öne eğilir ve barbell yere doğru çekilir. Bu hareket, sırtın orta kısmını hedefler."),
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
                              dataModel.pazartesiList
                                  .add('One Arm Barbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('One Arm Barbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList.add('One Arm Barbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList.add('One Arm Barbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('One Arm Barbell Row');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList
                                  .add('One Arm Barbell Row');
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
                              "assets/sirt/Reverse-Lat-Pulldown.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Reverse Lat Pulldown"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Reverse Lat Pulldown, sırt kaslarını çalıştıran bir egzersizdir. Kablo makinesi kullanılarak, avuç içleri dışa bakacak şekilde çekme hareketi yapılır. Bu egzersiz, genellikle üst sırt bölgesini ve latissimus dorsi kaslarını hedefler."),
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
                              dataModel.pazartesiList
                                  .add('Reverse Lat Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Reverse Lat Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList
                                  .add('Reverse Lat Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList
                                  .add('Reverse Lat Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Reverse Lat Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList
                                  .add('Reverse Lat Pulldown');
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
                              "assets/sirt/Rope-Straight-Arm-Pulldown.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Rope Straight Arm Pulldown"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Rope Straight Arm Pulldown, kablo makinesi kullanılarak yapılan bir egzersizdir. Halatı ellerle tutarak, kollar düz bir şekilde vücut yanlarından aşağı doğru çekilir. Bu hareket, latissimus dorsi kaslarını ve üst sırt bölgesini hedefler."),
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
                              dataModel.pazartesiList
                                  .add('Rope Straight Arm Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList
                                  .add('Rope Straight Arm Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList
                                  .add('Rope Straight Arm Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList
                                  .add('Rope Straight Arm Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList
                                  .add('Rope Straight Arm Pulldown');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList
                                  .add('Rope Straight Arm Pulldown');
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
