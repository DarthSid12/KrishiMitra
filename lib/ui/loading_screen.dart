import 'package:flutter/material.dart';
import 'package:flutter_onboarding/ui/onboarding_screen.dart';
import 'package:flutter_onboarding/ui/root_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) async {
      // String? language;
      String? language = prefs.getString('language');

      if (language == null) {
        prefs.setString('language', 'ENG');
        Navigator.pushReplacement(
            context,
            PageTransition(
                child: OnboardingScreen(
                  prefs: prefs,
                ),
                type: PageTransitionType.bottomToTop));
      } else {
        Navigator.pushReplacement(
            context,
            PageTransition(
                child: RootPage(
                  lang: language,
                  prefs: prefs,
                ),
                type: PageTransitionType.bottomToTop));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/logoWithName.jpg',
        height: 200,
        width: 200,
      ),
    );
  }
}
