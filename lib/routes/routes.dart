

import 'package:plantdiseasedetection/main.dart';
import 'package:plantdiseasedetection/screens/diseases.dart';
import 'package:plantdiseasedetection/screens/firstscreen.dart';
import 'package:plantdiseasedetection/screens/result.dart';
import 'package:plantdiseasedetection/utilities/about.dart';
import 'package:plantdiseasedetection/utilities/diseases_images.dart';

class AppRoutes {
  static const splashScreen = "/orderdetails";
  static const secondScreen = "/secondscreen";
  static const infoScreen = "/infoscreen";
  static const aboutScreen = "/aboutscreen";
  static const diseaseScreen = "/diseasescreen";
  static const diseaseImages = "/diseaseimages";

  static final appRoutes = {
    '/': (context) => const OrderDetails(),
    secondScreen: (context) =>
        const MyHomePage(title: 'Plant disease detection'),
    infoScreen: (context) =>  const Info(),
    aboutScreen: (context) => const About(),
    diseaseScreen: (context) => const Diseases(),
    diseaseImages: (context) => const DiseaseImages()
  };
}
