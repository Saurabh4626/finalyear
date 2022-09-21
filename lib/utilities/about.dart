// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:plantdiseasedetection/utilities/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  String txt = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                height: 400.0,
                decoration: const BoxDecoration(
                  image: const DecorationImage(
                    image: const AssetImage("assets/saeed.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  const SizedBox(height: 15.0),
                  const Align(
                    heightFactor: 1.5,
                    alignment: Alignment.topLeft,
                    child: Text('Saeed-Ullah', style: kTitleText),
                  ),
                  const Align(
                    heightFactor: 1.0,
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Trainer, Consultant and passionated Flutter Developer',
                        style: kMyIntro),
                  ),
                  const Divider(
                    endIndent: 240.0,
                    thickness: 5.0,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    'A passionate Software Engineer for more than six years in '
                    'different industries. He worked as a consultant for multiple'
                    'enterprise companies in Europe such as Swisscom, Diligent and '
                    'Deutsche Telekom. In 2020 he founded Flutter Explained a Tutorial '
                    'Channel on YouTube where he explains everything around Flutter Development.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignInButton(
                        Buttons.Email,
                        padding: const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        mini: true,
                        onPressed: () {
                          launch('https://mail.google.com/mail/u/0/#inbox');
                        },
                      ),
                      const SizedBox(
                        width: 24.0,
                      ),
                      SignInButton(
                        Buttons.LinkedIn,
                        padding: const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        mini: true,
                        onPressed: () {
                          launch('https://www.linkedin.com/login');
                        },
                      ),
                      const SizedBox(
                        width: 24.0,
                      ),
                      SignInButton(
                        Buttons.GitHub,
                        mini: true,
                        padding: const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        onPressed: () {
                          launch(
                              'https://github.com/asadpro?tab=repositories ');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 33.0,
                  )
                ],
              ),
            ),

            // Another container start from here
            Card(
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                height: 400.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/salman.jpg"),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  const SizedBox(height: 15.0),
                  const Align(
                    heightFactor: 1.5,
                    alignment: Alignment.topLeft,
                    child: Text('Salman-Gohar', style: kTitleText),
                  ),
                 const Align(
                    heightFactor: 1.0,
                    alignment: Alignment.topLeft,
                    child: Text('Mobile Developer and application tester',
                        style: kMyIntro),
                  ),
                  const Divider(
                    endIndent: 240.0,
                    thickness: 5.0,
                  ),
                 const SizedBox(
                    height: 12.0,
                  ),
                 const Text(
                    'I am a Mobile App Developer and Team Leader at BlueBit Technologies, in this My core competency lies in the complete end-to-end management and completing the entire project (iOS, Android and Backend side). I am seeking opportunities'
                    'to build Mobile Apps from the ground up for you or your business.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                 const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignInButton(
                        Buttons.Email,
                        padding: const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        mini: true,
                        onPressed: () {
                          launch('https://mail.google.com/mail/u/0/#inbox');
                        },
                      ),
                     const SizedBox(
                        width: 24.0,
                      ),
                      SignInButton(
                        Buttons.LinkedIn,
                        padding: const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        mini: true,
                        onPressed: () {
                          launch('https://www.linkedin.com/login');
                        },
                      ),
                     const SizedBox(
                        width: 24.0,
                      ),
                      SignInButton(
                        Buttons.GitHub,
                        mini: true,
                        padding:const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        onPressed: () {
                          launch(
                              'https://github.com/asadpro?tab=repositories ');
                        },
                      ),
                    ],
                  ),
                 const SizedBox(
                    height: 33.0,
                  )
                ],
              ),
            ),

            // Another container start from here
            Card(
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                height: 400.0,
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/ilyas.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  const SizedBox(height: 15.0),
                  const Align(
                    heightFactor: 1.5,
                    alignment: Alignment.topLeft,
                    child: Text('Muhammad Ilyas', style: kTitleText),
                  ),
                  const Align(
                    heightFactor: 1.0,
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Mobile Developer, Computer operator and programmer',
                        style: kMyIntro),
                  ),
                  const Divider(
                    endIndent: 240.0,
                    thickness: 5.0,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    'A passionate Software Engineer for more than six years in '
                    'different industries. He worked as a consultant for multiple'
                    'enterprise companies in Europe such as Swisscom, Diligent and '
                    'Deutsche Telekom. In 2020 he founded Flutter  Explained a Tutorial '
                    'Channel on YouTube where he explains everything around Flutter Development.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignInButton(
                        Buttons.Email,
                        padding: const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        mini: true,
                        onPressed: () {
                          launch('https://mail.google.com/mail/u/0/#inbox');
                        },
                      ),
                      const SizedBox(
                        width: 24.0,
                      ),
                      SignInButton(
                        Buttons.LinkedIn,
                        padding: const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        mini: true,
                        onPressed: () {
                          launch('https://www.linkedin.com/login');
                        },
                      ),
                      const SizedBox(
                        width: 24.0,
                      ),
                      SignInButton(
                        Buttons.GitHub,
                        mini: true,
                        padding: const EdgeInsets.all(12.0),
                        elevation: 14.0,
                        onPressed: () {
                          launch(
                              'https://github.com/asadpro?tab=repositories ');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 33.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
