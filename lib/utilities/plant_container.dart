import 'package:flutter/material.dart';
import 'package:plantdiseasedetection/utilities/constant.dart';
import 'package:plantdiseasedetection/utilities/helper.dart';

class PlantContainer extends StatelessWidget {
   // ignore: use_key_in_widget_constructors
   const PlantContainer({required this.onPress, required this.plantName});

  final VoidCallback onPress;
  final String plantName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: onPress,
        child: Stack(
          children: [
            Container(
              height: screenHeight(context) * 0.09,
              width: screenWidth(context) * 1.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage("assets/three.jpg"), fit: BoxFit.cover),
              ),
            ),
            Container(
              height: screenHeight(context) * 0.09,
              width: screenWidth(context) * 1.0,
              alignment: Alignment.center,
              child: Text(
                plantName,
                style: kDiseaseNameContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
