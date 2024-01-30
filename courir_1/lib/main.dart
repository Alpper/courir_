import 'dart:io';

import 'package:courir_1/abs.dart';
import 'package:courir_1/anamenu.dart';
import 'package:courir_1/arkakol.dart';
import 'package:courir_1/bacak.dart';
import 'package:courir_1/besin_list.dart';
import 'package:courir_1/besinler.dart';
import 'package:courir_1/firebase_options.dart';
import 'package:courir_1/iptalbolge.dart';

import 'package:courir_1/bolgeler2.dart';
import 'package:courir_1/gogus.dart';
import 'package:courir_1/kalca.dart';

import 'package:courir_1/omuz.dart';
import 'package:courir_1/onkol.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class DataModel {
  List<String> sabahList = [];
  List<String> oglenList = [];
  List<String> aksamList = [];
  List<String> pazartesiList = [];
  List<String> saliList = [];
  List<String> carsambaList = [];
  List<String> persembeList = [];
  List<String> cumaList = [];
  List<String> cumartesiList = [];
}

class MyApp extends StatelessWidget {
  final DataModel dataModel = DataModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: LoginPage(dataModel: dataModel),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  final DataModel dataModel;

  LoginPage({required this.dataModel});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => anamenu(dataModel: widget.dataModel),
        ),
      );
    } on FirebaseAuthException catch (e) {
      print("Giriş hatası: ${e.message}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 500,
            height: 500,
            child: Image(image: AssetImage("assets/images/courir_logo.jpg")),
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'E-posta'),
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Şifre'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.grey.shade800,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: _signInWithEmailAndPassword,
            child: Text("Giriş Yap", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}




/* void main() => runApp(MyApp());

class DataModel {
  List<String> sabahList = [];
  List<String> oglenList = [];
  List<String> aksamList = [];
  List<String> pazartesiList = [];
  List<String> saliList = [];
  List<String> carsambaList = [];
  List<String> persembeList = [];
  List<String> cumaList = [];
  List<String> cumartesiList = [];
}

class MyApp extends StatelessWidget {
  final DataModel dataModel = DataModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: abasayfa(dataModel),
      ),
    );
  }
}

class abasayfa extends StatelessWidget {
  final DataModel dataModel;

  abasayfa(this.dataModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 500,
          child: Image(image: AssetImage("assets/images/courir_logo.jpg")),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade800,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => anamenu(dataModel),
                ),
              );
            },
            child: Text("Ana Menü", style: TextStyle(color: Colors.white)))
      ],
    );
  }
} */
