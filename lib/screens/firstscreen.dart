import 'package:flutter/material.dart';
import 'package:plantdiseasedetection/routes/routes.dart';
import 'package:plantdiseasedetection/utilities/constant.dart';
import 'package:plantdiseasedetection/utilities/helper.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plant disease detection"),
      ),
      body: Scrollbar(
        interactive: true,
        isAlwaysShown: false,
        thickness: 12.0,
        radius: const Radius.circular(24.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // box 1
                  SafeArea(
                    child: ClipRRect(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.secondScreen,
                            arguments: (""));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: screenHeight(context) * 0.2,
                            width: screenWidth(context) * 1.0,
                            decoration: BoxDecoration(
                              gradient: kLinearGradient,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                              height: screenHeight(context) * 0.2,
                              width: screenWidth(context) * 1.0,
                              alignment: Alignment.center,
                              child:
                                  const Text('Detect Disease', style: kBoxTextTitle)),
                        ],
                      ),
                    )),
                  ),

                  SizedBox(height: screenHeight(context) * 0.02),

                  // box 2
                  SafeArea(
                    child: ClipRRect(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.diseaseScreen,
                            arguments: (""));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: screenHeight(context) * 0.2,
                            width: screenWidth(context) * 1.0,
                              decoration: BoxDecoration(
                                gradient: kLinearGradient,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            alignment: Alignment.center,
                            child:
                            const Text('Detect Information', style: kBoxTextTitle)),
                        ],
                      ),
                    )),
                  ),

                  SizedBox(height: screenHeight(context) * 0.02),

                  SizedBox(height: screenHeight(context) * 0.02),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class RadiantGradientMask extends StatelessWidget {
  const RadiantGradientMask({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const RadialGradient(
        center: Alignment.topRight,
        radius: 0.5,
        colors: [
          Color(0xffFFA984),
          Color(0xffFF793F),
        ],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
