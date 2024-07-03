import 'package:courir_1/main.dart';
import 'package:flutter/material.dart';

class bolgeler extends StatelessWidget {
  final DataModel dataModel;

  bolgeler(this.dataModel);
 
  String arkakol =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_13.jpeg";
  String onkol =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_12.jpeg";
  String gogus =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_15.jpeg";
  String bacak =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_8.jpeg";
  String kalca =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_10.jpeg";
  String sirt =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_16.jpeg";
  String omuz =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_17.jpeg";
  String abs =
      "https://www.garagegymreviews.com/wp-content/uploads/IsolationExercises_19.jpeg";

  @override
  Widget build(BuildContext context) {
    return newMethod();
  }

  CustomScrollView newMethod() {
    
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          actions: [popup_1()],
          backgroundColor: Colors.white,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
            "assets/images/courir_logo.jpg",
            fit: BoxFit.cover,
          )),
          expandedHeight: 200,
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate([
            GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        color: Colors.black, width: 2), //etrafındaki çizgi
                    image: DecorationImage(
                        image: NetworkImage(gogus),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)
                        ),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "GÖĞÜS",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              onTap: () => debugPrint("merhaba tıklandı haberin olsun"),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        color: Colors.black, width: 2),
                    image: DecorationImage(
                        image: NetworkImage(sirt),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "SIRT",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              onTap: () => debugPrint("merhaba tıklandı haberin olsun"),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        color: Colors.black, width: 2), 
                    image: DecorationImage(
                        image: NetworkImage(onkol),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "ÖN KOL",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              onTap: () => debugPrint("merhaba tıklandı haberin olsun"),
            ),
            GestureDetector(
              child: Container(               
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        color: Colors.black, width: 2), 
                    image: DecorationImage(
                        image: NetworkImage(arkakol),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "ARKA KOL",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              onTap: () => debugPrint("merhaba tıklandı haberin olsun"),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        color: Colors.black, width: 2), //etrafındaki çizgi
                    image: DecorationImage(
                        image: NetworkImage(omuz),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "OMUZ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              onTap: () => debugPrint("merhaba tıklandı haberin olsun"),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        color: Colors.black, width: 2), //etrafındaki çizgi
                    image: DecorationImage(
                        image: NetworkImage(bacak),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "BACAK",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              onTap: () => debugPrint("merhaba tıklandı haberin olsun"),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        color: Colors.black, width: 2), //etrafındaki çizgi
                    image: DecorationImage(
                        image: NetworkImage(abs),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "ABS",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              onTap: () => debugPrint("merhaba tıklandı haberin olsun"),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        color: Colors.black, width: 2), //etrafındaki çizgi
                    image: DecorationImage(
                        image: NetworkImage(kalca),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter)),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "KALÇA",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              onTap: () => debugPrint("merhaba tıklandı haberin olsun"),
            ),
          ]),
        ),
      ],
    );
  }
}

class popup_1 extends StatefulWidget {
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
            child: Text("Beslenme Programı"),
          ),
        ];
      }),
    );
  }
}
