import 'package:flutter/material.dart';
import 'package:plantdiseasedetection/routes/routes.dart';
import 'package:plantdiseasedetection/utilities/helper.dart';
import 'package:plantdiseasedetection/utilities/plant_container.dart';

class Diseases extends StatefulWidget {
  const Diseases({Key? key}) : super(key: key);

  @override
  State<Diseases> createState() => _DiseasesState();
}

class _DiseasesState extends State<Diseases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diseases'),
        centerTitle: true,
      ),
      body: Scrollbar(
        interactive: true,
        isAlwaysShown: true,
        thickness: 12.0,
        radius: const Radius.circular(12.0),
        showTrackOnHover: true,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // box 1
                  PlantContainer(
                    plantName: 'Pepper bell Bacterial spot',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/1.jpg',
                        'name': 'Pepper bell Bacterial spot'
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),

                  SizedBox(height: screenHeight(context) * 0.03),

                  // box 2
                  PlantContainer(
                    plantName: 'Pepper bell healthy',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/2.jpg',
                        'name': 'Pepper bell healthy'
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),

                  SizedBox(height: screenHeight(context) * 0.03),

                  // box 3
                  PlantContainer(
                    plantName: 'Potato Early blight',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/3.jpg',
                        'name': 'Potato Early blight',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),

                  SizedBox(height: screenHeight(context) * 0.03),

                  // box 4
                  PlantContainer(
                    plantName: 'Potato healthy',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/4.jpg',
                        'name': 'Potato healthy',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 5
                  PlantContainer(
                    plantName: 'Potato Late blight',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/5.jpg',
                        'name': 'Potato Late blight',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 6
                  PlantContainer(
                    plantName: 'Tomato Target Spot',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/6.jpg',
                        'name': 'Tomato Target Spot',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 7
                  PlantContainer(
                    plantName: 'Tomato mosaic virus',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/7.jpg',
                        'name': 'Tomato Tomato mosaic virus',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 8
                  PlantContainer(
                    plantName: 'Tomato Yellow\n Leaf Curl Virus',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/8.jpg',
                        'name': 'Tomato Tomato Yellow Leaf Curl Virus',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 9
                  PlantContainer(
                    plantName: 'Tomato Bacterial spot',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/9.jpg',
                        'name': 'Tomato Bacterial spot',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 10
                  PlantContainer(
                    plantName: 'Tomato Early blight',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/10.jpg',
                        'name': 'Tomato Early blight',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 11
                  PlantContainer(
                    plantName: 'Tomato healthy',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/11.jpg',
                        'name': 'Tomato healthy',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 12
                  PlantContainer(
                    plantName: 'Tomato Late blight',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/12.jpg',
                        'name': 'Tomato Late blight',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),

                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 13
                  PlantContainer(
                    plantName: 'Tomato Leaf Mold',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/13.jpg',
                        'name': 'Tomato Leaf Mold',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),

                  SizedBox(height: screenHeight(context) * 0.03),
                  // box 14
                  PlantContainer(
                    plantName: 'Tomato Septoria leaf spot',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/14.jpg',
                        'name': 'Tomato Septoria leaf spot',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),
                  SizedBox(height: screenHeight(context) * 0.03),

                  // box 14
                  PlantContainer(
                    plantName: 'Tomato Spider mites\nTwo-spotted spider mite',
                    onPress: () {
                      Map saeed = {
                        'path': 'assets/plantImages/15.jpg',
                        'name': 'Tomato Spider mites Two-spotted spider mite',
                      };
                      Navigator.pushNamed(context, AppRoutes.diseaseImages,
                          arguments: saeed);
                    },
                  ),

                  SizedBox(height: screenHeight(context) * 0.03),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
