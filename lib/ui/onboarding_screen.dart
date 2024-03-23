// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_onboarding/constants.dart';
import 'package:flutter_onboarding/ui/root_page.dart';

class OnboardingScreen extends StatefulWidget {
  final SharedPreferences prefs;
  const OnboardingScreen({
    Key? key,
    required this.prefs,
  }) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  Set<String> language = <String>{"ENG"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: RootPage(
                          lang: language.last,
                          prefs: widget.prefs,
                        ),
                        type: PageTransitionType.bottomToTop));
              }, //to login screen. We will update later
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              Center(
                child: Container(
                    height: 250,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Choose language/भाषा चुनें",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SegmentedButton<String>(
                          segments: [
                            const ButtonSegment(
                                value: 'ENG', label: Text("ENG")),
                            const ButtonSegment(
                                value: 'HIN', label: Text("हिंदी")),
                          ],
                          selected: language,
                          onSelectionChanged: (t) {
                            setState(() {
                              language = t;
                              print(language.last);
                              widget.prefs.setString('language', language.last);
                            });
                          },
                        ),
                      ],
                    )),
              ),
              OnboardPage(
                image: 'assets/images/farmer.png',
                title: language.last == 'ENG'
                    ? Constants.titleOne
                    : Constants.hindititleOne,
                description: language.last == 'ENG'
                    ? Constants.descriptionOne
                    : Constants.hindidescriptionOne,
              ),
              OnboardPage(
                image: 'assets/images/plant-two.png',
                title: language.last == 'ENG'
                    ? Constants.titleTwo
                    : Constants.hindititleTwo,
                description: language.last == 'ENG'
                    ? Constants.descriptionTwo
                    : Constants.hindidescriptionTwo,
              ),
              OnboardPage(
                image: 'assets/images/market.png',
                title: language.last == 'ENG'
                    ? Constants.titleThree
                    : Constants.hindititleThree,
                description: language.last == 'ENG'
                    ? Constants.descriptionThree
                    : Constants.hindidescriptionThree,
              ),
              OnboardPage(
                image: 'assets/images/forecast.png',
                title: language.last == 'ENG'
                    ? Constants.titleFour
                    : Constants.hindititleFour,
                description: language.last == 'ENG'
                    ? Constants.descriptionFour
                    : Constants.hindidescriptionFour,
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 30,
            child: Row(
              children: _buildIndicator(),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 30,
            child: Container(
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (currentIndex < 4) {
                        currentIndex++;
                        if (currentIndex < 5) {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        }
                      } else {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: RootPage(
                                    lang: language.last, prefs: widget.prefs),
                                type: PageTransitionType.bottomToTop));
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Colors.white,
                  )),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Extra Widgets

  //Create the indicator decorations widget
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10.0,
      width: isActive ? 20 : 8,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

//Create the indicator list
  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 5; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

class OnboardPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 350,
            child: Image.asset(image),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
