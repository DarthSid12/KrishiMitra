// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_onboarding/constants.dart';
import 'package:flutter_onboarding/ui/screens/detail_page.dart';
import 'package:flutter_onboarding/ui/screens/subsidies_page.dart';
import 'package:flutter_onboarding/ui/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RootPage extends StatefulWidget {
  final String lang;
  final SharedPreferences prefs;
  const RootPage({
    Key? key,
    required this.lang,
    required this.prefs,
  }) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  GlobalKey<ScaffoldState> scafKey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController? controller;
  int _bottomNavIndex = 0;

  void diseaseRecognize() {
    print("Hi sid");
    // Navigator.push(
    //     context,
    //     PageTransition(
    //         child: const ScanPage(),
    //         type: PageTransitionType.bottomToTop));
    final ImagePicker imagePicker = ImagePicker();
    XFile? image;
    if (controller == null) {
      controller = scafKey.currentState!.showBottomSheet((context) => Container(
            height: 150,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Constants.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () async {
                        image = await imagePicker.pickImage(
                            source: ImageSource.camera);
                        if (image != null) {
                          classifyImage(File(image!.path));
                        }
                        controller = null;

                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      backgroundColor: Constants.blackColor,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () async {
                        image = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        if (image != null) {
                          classifyImage(File(image!.path));
                        } else {
                          loading = false;
                        }
                        controller = null;

                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.file_copy,
                        color: Colors.white,
                      ),
                      backgroundColor: Constants.blackColor,
                    )
                  ],
                ),
              ],
            ),
          ));
    } else {
      loading = false;
      controller!.close();
      controller = null;
    }

    setState(() {});
  }

  //List of the pages
  late List<Widget> widgetOptions = [];

  Set<String> language = <String>{"ENG"};
  var streamController = StreamController<String>.broadcast();
  //List of the pages icons
  List<IconData> iconList = [
    Icons.home,
    Icons.edit_document,
  ];
  bool loading = false;
  //List of the pages titles
  List<String> titleList = [
    'Home',
    'Schemes',
  ];
  @override
  void initState() {
    super.initState();
    language = <String>{widget.lang};
    widgetOptions = [
      HomePage(
        diseaseRecognise: diseaseRecognize,
        lang: language.last,
        stream: streamController.stream,
        goToSubsidy: () {
          _bottomNavIndex = 1;
          setState(() {});
        },
      ),
      SubsidiesPage(
        lang: language.last,
        stream: streamController.stream,
      ),
      // CartPage(
      //   addedToCartPlants: myCart,
      // ),
      // const ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafKey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              language.last == 'ENG' ? "Krishi Mitra" : "कृषि मित्र",
              style: GoogleFonts.robotoTextTheme().headlineMedium!.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  color: Colors.white),
            ),
            // Text(
            //   titleList[_bottomNavIndex],
            //   style: TextStyle(
            //     color: Constants.blackColor,
            //     fontWeight: FontWeight.w500,
            //     fontSize: 24,
            //   ),
            // ),
            // Icon(
            //   Icons.notifications,
            //   color: Constants.blackColor,
            //   size: 30.0,
            // )
            SegmentedButton<String>(
              segments: [
                const ButtonSegment(value: 'ENG', label: Text("ENG")),
                const ButtonSegment(value: 'HIN', label: Text("हिंदी")),
              ],
              selected: language,
              onSelectionChanged: (t) {
                setState(() {
                  language = t;
                  print(language.last);
                  streamController.add(language.last);
                  widget.prefs.setString('language', language.last);
                });
              },
            )
          ],
        ),
        backgroundColor: Constants.primaryColor,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          widgetOptions[_bottomNavIndex],
          loading
              ? Center(
                  child: CircularProgressIndicator(
                    // value: 0.5,
                    color: Constants.primaryColor,
                  ),
                )
              : Container()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: diseaseRecognize,
        child: const Icon(
          Icons.camera_alt,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: Constants.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          splashColor: Constants.primaryColor,
          activeColor: Constants.primaryColor,
          inactiveColor: Colors.black.withOpacity(.5),
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
              widgetOptions = [
                HomePage(
                  diseaseRecognise: diseaseRecognize,
                  lang: language.last,
                  stream: streamController.stream,
                  goToSubsidy: () {
                    _bottomNavIndex = 1;
                    setState(() {});
                  },
                ),
                SubsidiesPage(
                  lang: language.last,
                  stream: streamController.stream,
                ),
                // CartPage(
                //   addedToCartPlants: myCart,
                // ),
                // const ProfilePage(),
              ];
            });
          }),
    );
  }

  void classifyImage(File file) async {
    loading = true;
    setState(() {});
    final dio = Dio();
    print("Resonse thingy");
    print(Uri.https(
      'susya.onrender.com',
      '',
    ));
    final bytes = await file.readAsBytes();
    Response response = await dio.post('https://susya.onrender.com',
        data: {"image": base64Encode(bytes)});
    print("Housetonnnnn");
    print(response.data.runtimeType);
    Disease disease = Disease.fromMap(response.data);
    loading = false;
    setState(() {});
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DetailPage(lang: language.last, disease: disease)));
  }
}
