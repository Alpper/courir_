import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class arkakol extends StatelessWidget {
  final DataModel dataModel;

  arkakol(this.dataModel);

  String zort = "Ekle";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text("Arka Kol Egzersizleri",
            style: TextStyle(color: Colors.white)),
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
                              "assets/arkakol/Barbell-Triceps-Extension.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Barbell Triceps Extension"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Barbell Triceps Extension sehpada yatış pozisyonunda yapılır. Sırt üstü uzanırken, barbell'i iki elinizle kavrayarak kollarınızı yukarı doğru kaldırın. Dirseklerinizi sabit tutarak kollarınızı bükün, barbell'i başınızın arkasına indirin. Ardından kollarınızı düzleştirerek başlangıç pozisyonuna geri dönün. Bu hareket, sırt üstü pozisyon avantajıyla triseps kaslarını etkili bir şekilde çalıştırır ve üst kol güçlenmesine katkı sağlar."),
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
              dataModel.pazartesiList.add('Barbell Triceps Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Barbell Triceps Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Barbell Triceps Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Barbell Triceps Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Barbell Triceps Extension');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Barbell Triceps Extension');
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
                          image: AssetImage("assets/arkakol/Body-Ups.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Body Ups"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Body-Ups, bir çubuk veya paralel çubuk kullanılarak yapılan vücut ağırlığı egzersizidir. Ellerle çubuğa tutunarak vücudu yukarı kaldırma ve tekrar indirme hareketini içerir. Bu egzersiz, triseps, göğüs ve omuz kaslarını güçlendirmeye yardımcı olur."),
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
              dataModel.pazartesiList.add('Body Ups');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Body Ups');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Body Ups');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Body Ups');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Body Ups');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Body Ups');
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
                              "assets/arkakol/Cable-Rope-Overhead-Triceps-Extension.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Cable Rope Overhead Triceps Extension"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Cable Rope Overhead Triceps Extension egzersizi, kablo makinesi ve 'rope' adlı özel bir tutamaç kullanılarak gerçekleştirilen bir triseps çalışmasıdır. İki elinizle 'rope'u tutarak kollarınızı başınızın üzerinde düzleştirin, ardından dirseklerinizi bükerek kabloları başınızın arkasına indirin. Sonra kollarınızı düzleştirerek başlangıç pozisyonuna geri dönün. Bu hareket, triseps kaslarını güçlendirmeye ve üst kolu tonlamaya yardımcı olur."),
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
              dataModel.pazartesiList.add('Cable Rope Overhead Triceps Extension');        
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Cable Rope Overhead Triceps Extension');        
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Cable Rope Overhead Triceps Extension');        
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Cable Rope Overhead Triceps Extension');        
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Cable Rope Overhead Triceps Extension');        
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Cable Rope Overhead Triceps Extension');        
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
                              "assets/arkakol/Dumbbell-Kickback.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Dumbbell Kickback"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Dumbbell Kickback, tek dumbbell kullanarak yapılan bir triceps egzersizidir. Vücudu destekleyerek, dirsek bükmeden alt kolunuzu düzleştirip, dumbbell'i arkaya doğru itersiniz. Bu hareket triceps kaslarını güçlendirir."),
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
              Navigator.pop(context);
              dataModel.pazartesiList.add('Dumbbell Kickback'); 
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Dumbbell Kickback'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Dumbbell Kickback'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              Navigator.pop(context);
              dataModel.persembeList.add('Dumbbell Kickback'); 
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Dumbbell Kickback'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Dumbbell Kickback'); 
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
                              "assets/arkakol/One-arm-triceps-pushdown.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("One Arm Triceps Pushdown"),
                          content: SingleChildScrollView(
                            child: Text(
                                "One Arm Triceps Pushdown, tek bir kol ile kablo makinesi kullanılarak yapılan bir triceps egzersizidir. Düz bir tutamaç veya 'rope' kullanılarak, kolu vücuda yakın tutarak kabloları aşağı doğru itersiniz. Bu egzersiz triceps kaslarını güçlendirir."),
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
              dataModel.pazartesiList.add('One Arm Triceps Pushdown'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('One Arm Triceps Pushdown'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('One Arm Triceps Pushdown'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('One Arm Triceps Pushdown'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('One Arm Triceps Pushdown'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('One Arm Triceps Pushdown'); 
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
                              "assets/arkakol/Seated-Dumbbell-Triceps-Extension.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Seated Dumbbell Triceps Extension"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Seated Dumbbell Triceps Extension, oturur pozisyonda yapılan bir triceps egzersizidir. Her iki elde birer dumbbell (halter) kullanılarak, kollarınızı başınızın arkasına doğru kaldırıp indirirsiniz. Bu hareket, triceps kaslarını güçlendirmeye yöneliktir."),
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
              dataModel.pazartesiList.add('Seated Dumbbell Triceps Extension'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Seated Dumbbell Triceps Extension'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Seated Dumbbell Triceps Extension'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Seated Dumbbell Triceps Extension'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Seated Dumbbell Triceps Extension'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Seated Dumbbell Triceps Extension'); 
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
                              "assets/arkakol/Triceps-Dips-on-Floor.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Triceps Dips on Floor"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Triceps Dips on Floor, yerde yapılabilen bir triceps egzersizidir. Ellerinizi arkaya doğru yerleştirerek ve bacaklarınızı düz tutarak, vücudunuzu yere paralel bir şekilde kaldırıp indirirsiniz. Bu hareket triceps kaslarını güçlendirmeye odaklanır."),
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
              dataModel.pazartesiList.add('Triceps Dips on Floor'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Salı'),
            onTap: () {
              dataModel.saliList.add('Triceps Dips on Floor'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Çarşamba'),
            onTap: () {
              dataModel.carsambaList.add('Triceps Dips on Floor'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Perşembe'),
            onTap: () {
              dataModel.persembeList.add('Triceps Dips on Floor'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cuma'),
            onTap: () {
              dataModel.cumaList.add('Triceps Dips on Floor'); 
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Cumartesi'),
            onTap: () {
              dataModel.cumartesiList.add('Triceps Dips on Floor'); 
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