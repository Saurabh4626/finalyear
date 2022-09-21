// ignore_for_file: avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plantdiseasedetection/routes/routes.dart';
import 'package:tflite/tflite.dart';
import 'package:flutter/services.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Ubuntu-Regular',
        colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark),
        appBarTheme: const AppBarTheme(
          color: Color(0xff47a63a),
          titleTextStyle:
              TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
        ),
        cardTheme: CardTheme(
          elevation: 13.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          color: Colors.grey[900],
          margin: const EdgeInsets.all(10.0),
        ),
      ),
      title: 'Plant Application',
      initialRoute: "/",
      routes: AppRoutes.appRoutes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? selectedImage;
  String? message = '';
  Future loadMyModel() async {
    try {
      await Tflite.loadModel(
        model: "assets/plant_disease_model.tflite",
        labels: "assets/Labels.txt",
      );
    } on PlatformException {
      print('Failed to load model.');
    }
  }

  

  @override
  void initState() {
    super.initState();
    loadMyModel();
  }

  late List _result;
  String _confidence = "";
  String name = "";
  String numbers = "";

  predict(File file) async {
    var res = await Tflite.runModelOnImage(
        path: file.path,
        numResults: 15,
        threshold: 0.5,
        imageMean: 127.5,
        imageStd: 127.5);

    String imagePath = file.path;

    setState(() {
      _result = res!;

      print(_result);
      print("hello");
      // List a = [];

      if (_result.isEmpty) {
        //put an alert dialog here
        print("hello2");
      } else {
        String str = _result[0]["label"];

        name = str;

        Map saeed = {'path': imagePath, 'name': name};
        // ignore: unnecessary_null_comparison
        _confidence = _result != null
            ? (_result[0]["confidence"] * 100.0).toString().substring(0, 2) +
                "%"
            : "";

        Navigator.pushNamed(context, AppRoutes.infoScreen, arguments: saeed);
      }
    });
  }

  Future getImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    try {
      selectedImage = File(pickedImage!.path);
      setState(
        () {
          predict(selectedImage!);
        },
      );
    } catch (e) {
      print(e);
    }
  }

//created by me
  Future getCamera() async {
    final takeImage = await ImagePicker().pickImage(source: ImageSource.camera);
    try {
      selectedImage = File(takeImage!.path);
      setState(
        () {
          predict(selectedImage!);
        },
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Object? rcvdData = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.green,
          Colors.blue,
          Colors.pink,
          Colors.greenAccent,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              selectedImage == null
                  ? const Text(
                      'Select Image',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold),
                    )
                  : Expanded(
                      child: Image.file(selectedImage!),
                      flex: 5,
                    ),
              Text("Name: $name \n Confidence: $_confidence"),
              Text("$rcvdData"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    icon: const Icon(
                      Icons.camera,
                      size: 40.0,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    label: const Text('Camera'),
                    onPressed: () {
                      getCamera();
                    },
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      getImage();
                    },
                    icon: const Icon(
                      Icons.image,
                      size: 40.0,
                    ),
                    label: const Text('Gallery'),
                  )
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
