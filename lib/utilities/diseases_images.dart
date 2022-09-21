import 'package:flutter/material.dart';
import 'package:plantdiseasedetection/utilities/constant.dart';
import 'package:plantdiseasedetection/utilities/disease_cure.dart';
import 'package:plantdiseasedetection/utilities/disease_symptoms.dart';
import 'package:plantdiseasedetection/utilities/youtube_videos.dart';
import 'package:url_launcher/url_launcher.dart';

class DiseaseImages extends StatelessWidget {
  const DiseaseImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map rcvdData = ModalRoute.of(context)!.settings.arguments as Map;
    late String imagePath = rcvdData['path'];

    // Widget returnImage() {
    //   if (rcvdData['path'] == 'null') {
    //     return Image(image: AssetImage('assets/one.jpg'));
    //   } else {
    //     return Image(
    //       image: FileImage(File(imagePath)),
    //       fit: BoxFit.contain,
    //     );
    //   }
    // }

    late String imageName = rcvdData['name'];
    DiseaseCure diseaseCure = DiseaseCure();
    DiseaseVideo diseaseVideo = DiseaseVideo();
    DiseaseSymptom diseaseSymptom = DiseaseSymptom();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant disease detection'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 23.0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Image(
                    height: 300.0,
                    width: double.infinity,
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 12.0),
                    child: Text(imageName, style: kTitleText),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text('Cause of Disease', style: kTitleText),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          '${diseaseCure.returnDesc(imageName)}',
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text('Symptoms', style: kTitleText),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          '${diseaseSymptom.returnSymptom(imageName)}',
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            var videoUrl =
                                diseaseVideo.returnVideo(rcvdData['name'].toString());
                            launch('$videoUrl');
                          },
                          icon: const Icon(
                            Icons.play_circle_filled_outlined,
                            size: 35.0,
                          ),
                          label: const Text(
                            'Watch Me',
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
