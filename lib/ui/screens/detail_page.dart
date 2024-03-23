// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_onboarding/constants.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DetailPage extends StatefulWidget {
  final Disease disease;
  final String lang;
  DetailPage({
    Key? key,
    required this.disease,
    required this.lang,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late Disease disease;
  late FlutterTts flutterTts;
  bool speaking = false;
  //Toggle Favorite button
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }

  //Toggle add remove from cart
  bool toggleIsSelected(bool isSelected) {
    return !isSelected;
  }

  @override
  void initState() {
    super.initState();
    disease = widget.disease;
    if (widget.lang != 'ENG') {
      translate();
    }
    initTTS();
  }

  initTTS() {
    flutterTts = FlutterTts();
  }

  translate() async {
    final onDeviceTranslator = OnDeviceTranslator(
        sourceLanguage: TranslateLanguage.english,
        targetLanguage: TranslateLanguage.hindi);
    disease.disease = await onDeviceTranslator.translateText(disease.disease);
    if (mounted) setState(() {});
    disease.plant = await onDeviceTranslator.translateText(disease.plant);
    if (mounted) setState(() {});
    disease.remedy = await onDeviceTranslator.translateText(disease.remedy);
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    flutterTts.stop();
    speaking = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Constants.primaryColor.withOpacity(.15),
                ),
                child: Icon(
                  Icons.close,
                  color: Constants.primaryColor,
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 50,
          //   left: 20,
          //   right: 20,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       GestureDetector(
          //         onTap: () {
          //           Navigator.pop(context);
          //         },
          //         child: Container(
          //           height: 40,
          //           width: 40,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(25),
          //             color: Constants.primaryColor.withOpacity(.15),
          //           ),
          //           child: Icon(
          //             Icons.close,
          //             color: Constants.primaryColor,
          //           ),
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () {
          //           debugPrint('favorite');
          //         },
          //         child: Container(
          //           height: 40,
          //           width: 40,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(25),
          //             color: Constants.primaryColor.withOpacity(.15),
          //           ),
          //           child: IconButton(
          //               onPressed: () {
          //                 setState(() {
          //                   bool isFavorited = toggleIsFavorated(
          //                       _plantList[widget.disease].isFavorated);
          //                   _plantList[widget.disease].isFavorated =
          //                       isFavorited;
          //                 });
          //               },
          //               icon: Icon(
          //                 _plantList[widget.disease].isFavorated == true
          //                     ? Icons.favorite
          //                     : Icons.favorite_border,
          //                 color: Constants.primaryColor,
          //               )),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: InkWell(
                onTap: () async {
                  if (speaking) {
                    flutterTts.stop();
                    speaking = false;
                    return;
                  }
                  speaking = true;

                  flutterTts.setVolume(0.8);
                  flutterTts.getLanguages.then((value) => print(value));
                  if (widget.lang == 'ENG') {
                    await flutterTts.setLanguage('en-US');
                    await flutterTts.speak(
                        'Disease:${disease.disease} Plant:${disease.plant} Cure: ${disease.remedy}');
                  } else {
                    print(1);
                    await flutterTts.setLanguage('hi-IN');
                    print(2);
                    await flutterTts.speak(
                        'बीमारी:${disease.disease} पौधा:${disease.plant} इलाज: ${disease.remedy}');
                  }
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Constants.primaryColor.withOpacity(.15),
                  ),
                  child: Icon(
                    Icons.keyboard_voice,
                    color: Constants.primaryColor,
                  ),
                ),
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 270.0),
              child: SizedBox(
                height: 350,
                child: Image.asset('assets/images/plant-one.png'),
              ),
            ),
          ),
          // Positioned(
          //   top: 100,
          //   left: 20,
          //   right: 20,
          //   child: Container(
          //     width: size.width * .8,
          //     height: size.height * .8,
          //     padding: const EdgeInsets.all(20),
          //     child: Stack(
          //       children: [
          //         Positioned(
          //           top: 10,
          //           left: 0,
          //           child: SizedBox(
          //             height: 350,
          //             child: Image.asset('assets/images/plant-one.png'),
          //           ),
          //         ),
          //         // const Positioned(
          //         //   top: 10,
          //         //   right: 0,
          //         //   child: SizedBox(
          //         //     height: 200,
          //         //     child: Column(
          //         //       crossAxisAlignment: CrossAxisAlignment.start,
          //         //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //       children: [
          //         //         PlantFeature(
          //         //           title: 'Size',
          //         //           plantFeature: "TBD",
          //         //         ),
          //         //         PlantFeature(
          //         //           title: 'Humidity',
          //         //           plantFeature: "TBD",
          //         //         ),
          //         //         PlantFeature(
          //         //           title: 'Temperature',
          //         //           plantFeature: "TBD",
          //         //         ),
          //         //       ],
          //         //     ),
          //         //   ),
          //         // ),
          //       ],
          //     ),
          //   ),
          // ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
              height: size.height * .5,
              width: size.width,
              decoration: BoxDecoration(
                color: Constants.primaryColor.withOpacity(.4),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              disease.plant,
                              style: TextStyle(
                                color: Constants.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              disease.disease,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Constants.blackColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Text(
                        //       _plantList[widget.disease].rating.toString(),
                        //       style: TextStyle(
                        //         fontSize: 30.0,
                        //         color: Constants.primaryColor,
                        //       ),
                        //     ),
                        //     Icon(
                        //       Icons.star,
                        //       size: 30.0,
                        //       color: Constants.primaryColor,
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      disease.remedy,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 15,
                        color: Constants.blackColor.withOpacity(.7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: SizedBox(
      //   width: size.width * .9,
      //   height: 50,
      //   child: Row(
      //     children: [
      //       Container(
      //         height: 50,
      //         width: 50,
      //         child: IconButton(
      //             onPressed: () {
      //               setState(() {
      //                 bool isSelected = toggleIsSelected(
      //                     _plantList[widget.disease].isSelected);

      //                 _plantList[widget.disease].isSelected = isSelected;
      //               });
      //             },
      //             icon: Icon(
      //               Icons.shopping_cart,
      //               color: _plantList[widget.disease].isSelected == true
      //                   ? Colors.white
      //                   : Constants.primaryColor,
      //             )),
      //         decoration: BoxDecoration(
      //             color: _plantList[widget.disease].isSelected == true
      //                 ? Constants.primaryColor.withOpacity(.5)
      //                 : Colors.white,
      //             borderRadius: BorderRadius.circular(50),
      //             boxShadow: [
      //               BoxShadow(
      //                 offset: const Offset(0, 1),
      //                 blurRadius: 5,
      //                 color: Constants.primaryColor.withOpacity(.3),
      //               ),
      //             ]),
      //       ),
      //       const SizedBox(
      //         width: 20,
      //       ),
      //       Expanded(
      //         child: Container(
      //           decoration: BoxDecoration(
      //               color: Constants.primaryColor,
      //               borderRadius: BorderRadius.circular(10),
      //               boxShadow: [
      //                 BoxShadow(
      //                   offset: const Offset(0, 1),
      //                   blurRadius: 5,
      //                   color: Constants.primaryColor.withOpacity(.3),
      //                 )
      //               ]),
      //           child: const Center(
      //             child: Text(
      //               'BUY NOW',
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 20.0,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class PlantFeature extends StatelessWidget {
  final String plantFeature;
  final String title;
  const PlantFeature({
    Key? key,
    required this.plantFeature,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Constants.blackColor,
          ),
        ),
        Text(
          plantFeature,
          style: TextStyle(
            color: Constants.primaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
