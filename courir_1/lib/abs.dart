import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class abs extends StatelessWidget {
  final DataModel dataModel;

  abs(this.dataModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text("Abs Egzersizleri", style: TextStyle(color: Colors.white)),
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
                          image: AssetImage("assets/abs/Ab-Wheel-Rollout.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Ab Wheel Rollout"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Ab wheel adlı tekerlek şeklindeki bir aletle yapılır. Başlangıç pozisyonunda dizler üzerinde çömelir, ab wheel'i ellerinizle tutarak vücudunuzu yere doğru uzatıp tekrar çekersiniz. Bu hareket, karın kaslarına ek olarak sırt, omuz ve kol kaslarını da çalıştırır."),
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
                              dataModel.pazartesiList.add('Ab Wheel Rollout');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Ab Wheel Rollout');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList.add('Ab Wheel Rollout');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList.add('Ab Wheel Rollout');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Ab Wheel Rollout');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList.add('Ab Wheel Rollout');
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
                              "assets/abs/Cross-Body-Mountain-Climber.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Cross Body Mountain Climber"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Cross Body Mountain Climber, push-up pozisyonunda başlayarak sırayla bir bacağınızı göğsünüze doğru çekip diğer bacağınızla sırt üstü bir pozisyona geçiş yapmanızı içeren dinamik bir karın egzersizidir. Bu hareket, karın kaslarınızı güçlendirirken aynı zamanda kalça, üst beden ve omuz kaslarını da çalıştırır."),
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
                                  .add('Cross Body Mountain Climber');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList
                                  .add('Cross Body Mountain Climber');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList
                                  .add('Cross Body Mountain Climber');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList
                                  .add('Cross Body Mountain Climber');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList
                                  .add('Cross Body Mountain Climber');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList
                                  .add('Cross Body Mountain Climber');
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
                          image: AssetImage("assets/abs/Cross-Crunch.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Cross Crunch"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Cross Crunch, sırt üstü yatar pozisyonda başlayan bir karın egzersizidir. Sağ dizinizi bükerek yukarı kaldırır ve aynı anda sol dirseğinizi sağ dizinize doğru çevirirsiniz. Bu hareketle üst vücudunuzu çapraz bir şekilde çevirir, ardından başlangıç pozisyonuna dönerek diğer tarafı çalıştırmak için aynı hareketi tekrarlarsınız."),
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
                              dataModel.pazartesiList.add('Cross Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Cross Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList.add('Cross Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList.add('Cross Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Cross Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList.add('Cross Crunch');
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
                          image: AssetImage("assets/abs/Crunch.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Crunch"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Crunch egzersizi, sırt üstü uzanarak başlanan bir karın çalışmasıdır. Dizler bükülü, ayaklar yere basılı, eller başın yanında veya göğsün üzerinde olabilir. Karın kaslarını sıkarak, baş ve omuzları yerden kaldırıp üst vücudu kısa bir mesafe yukarıya doğru kaldırma hareketini içerir. Hareketin ardından kontrollü bir şekilde başlangıç pozisyonuna geri dönülür. Bu egzersiz, özellikle üst karın kaslarını güçlendirmeye yöneliktir."),
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
                              dataModel.pazartesiList.add('Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList.add('Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList.add('Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList.add('Crunch');
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
                          image:
                              AssetImage("assets/abs/Seated-Cable-Twist.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Seated Cable Twist"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Seated Cable Twist, oturur pozisyonda yapılan bir egzersizdir. Kablo makinesindeki tutma kollarını kullanarak, üst vücudu yan tarafa doğru döndürme hareketini içerir. Bu egzersiz, özellikle oblik kasları çalıştırarak karın bölgesini güçlendirir."),
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
                              dataModel.pazartesiList.add('Seated Cable Twist');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Seated Cable Twist');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList.add('Seated Cable Twist');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList.add('Seated Cable Twist');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Seated Cable Twist');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList.add('Seated Cable Twist');
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
                          image:
                              AssetImage("assets/abs/Seated-Flutter-Kick.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Seated Flutter Kick"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Seated Flutter Kick, oturur pozisyonda yapılan bir karın egzersizidir. Yere otururken bacakları kaldırıp hafifçe eğerek, ayakları sırayla yukarı ve aşağı hareket ettirme hareketini içerir. Bu egzersiz, alt karın kaslarını çalıştırarak karın bölgesini güçlendirir."),
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
                                  .add('Seated Flutter Kick');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Seated Flutter Kick');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList.add('Seated Flutter Kick');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList.add('Seated Flutter Kick');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Seated Flutter Kick');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList
                                  .add('Seated Flutter Kick');
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
                              "assets/abs/Standing-Cable-Crunch.gif"),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text("Standing Cable Crunch"),
                          content: SingleChildScrollView(
                            child: Text(
                                "Standing Cable Crunch, ayakta dururken kablo makinesi kullanılarak yapılan bir karın egzersizidir. Kablo makinesinin üst tutamaklarına bağlanan bir kablo, baş ve omuzların karın bölgesine doğru çekilmesiyle gerçekleşen bir çekme hareketini içerir. Bu egzersiz, üst karın kaslarını hedefler ve karın bölgesini güçlendirir."),
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
                                  .add('Standing Cable Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Salı'),
                            onTap: () {
                              dataModel.saliList.add('Standing Cable Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Çarşamba'),
                            onTap: () {
                              dataModel.carsambaList
                                  .add('Standing Cable Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Perşembe'),
                            onTap: () {
                              dataModel.persembeList
                                  .add('Standing Cable Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cuma'),
                            onTap: () {
                              dataModel.cumaList.add('Standing Cable Crunch');
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Cumartesi'),
                            onTap: () {
                              dataModel.cumartesiList
                                  .add('Standing Cable Crunch');
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

