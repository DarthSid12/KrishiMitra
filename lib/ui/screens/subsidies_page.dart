// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_onboarding/constants.dart';

class SubsidiesPage extends StatefulWidget {
  final String lang;
  final Stream<String> stream;

  const SubsidiesPage({
    Key? key,
    required this.lang,
    required this.stream,
  }) : super(key: key);

  @override
  State<SubsidiesPage> createState() => _SubsidiesPageState();
}

class _SubsidiesPageState extends State<SubsidiesPage> {
  String lang = 'ENG';
  List<Map<String, List<Subsidy>>> englishList = [
    {'All India': Constants.allIndiaSubsidiesEnglish},
    {'Haryana': Constants.haryanaSubsidies},
    {'Punjab': Constants.punjabSubsidies},
    {'West Bengal': Constants.wbSubsidies},
    {'Madhya Pradesh': Constants.mpSubsidies},
    {'Arunachal Pradesh': Constants.apSubsidies},
    {'Maharashtra': Constants.maharashtraSubsidies},
  ];
  List<Map<String, List<Subsidy>>> hindiList = [
    {'अखिल भारतीय': Constants.allIndiaSubsidiesHindi},
    {'हरयाणा': Constants.haryanaSubsidiesHindi},
    {'पंजाब': Constants.punjabSubsidiesHindi},
    {'पश्चिम बंगाल': Constants.wbSubsidiesHindi},
    {'मध्य प्रदेश': Constants.mpSubsidiesHindi},
    {'अरुणाचल प्रदेश': Constants.apSubsidiesHindi},
    {'महाराष्ट्र': Constants.maharashtraSubsidiesHindi},
  ];

  @override
  void initState() {
    super.initState();
    lang = widget.lang;
    widget.stream.listen((event) {
      lang = event;
      items = lang == 'ENG' ? englishList : hindiList;
      if (lang == 'ENG') {
        stateValue = englishList[hindiList.lastIndexWhere((element) {
          return element.keys.first == stateValue.keys.first;
        })];
      } else {
        print("SuperSiddi");
        print(stateValue);
        print(englishList.lastIndexWhere((element) {
          return element.keys.first == stateValue.keys.first;
        }));
        stateValue = hindiList[englishList.lastIndexWhere((element) {
          return element.keys.first == stateValue.keys.first;
        })];
      }
      if (mounted) {
        setState(() {});
      }
    });

    stateValue = lang == 'ENG'
        ? {'All India': Constants.allIndiaSubsidiesEnglish}
        : {'अखिल भारतीय': Constants.allIndiaSubsidiesHindi};
    items = lang == 'ENG' ? englishList : hindiList;
  }

  // Initial Selected Value
  Map<String, List<Subsidy>> stateValue = {};

  // List of items in our dropdown menu
  List<Map<String, List<Subsidy>>> items = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      // height: size.height * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.1,
            // width: size.width * 0.31,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "State",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Container(
                      width: size.width * 0.5,
                      child: DropdownButton<String>(
                        // Initial Value
                        value: stateValue.keys.first,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((Map<String, List<Subsidy>> t) {
                          return DropdownMenuItem(
                            value: t.keys.first.toString(),
                            child: Text(t.keys.first),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            stateValue = items
                                .where((element) =>
                                    element.keys.contains(newValue!))
                                .first;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       "State",
                //       style:
                //           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                //     ),
                //     Container(
                //       width: size.width * 0.29,
                //       child: DropdownButton(
                //         // Initial Value
                //         value: stateValue,

                //         // Down Arrow Icon
                //         icon: const Icon(Icons.keyboard_arrow_down),

                //         // Array list of items
                //         items: items.map((String items) {
                //           return DropdownMenuItem(
                //             value: items,
                //             child: Text(items),
                //           );
                //         }).toList(),
                //         // After selecting the desired option,it will
                //         // change button value to selected value
                //         onChanged: (String? newValue) {
                //           setState(() {
                //             stateValue = newValue!;
                //           });
                //         },
                //       ),
                //     ),
                //   ],
                // ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       "State",
                //       style:
                //           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                //     ),
                //     Container(
                //       width: size.width * 0.28,
                //       child: DropdownButton(
                //         // Initial Value
                //         value: stateValue,

                //         // Down Arrow Icon
                //         icon: const Icon(Icons.keyboard_arrow_down),

                //         // Array list of items
                //         items: items.map((String items) {
                //           return DropdownMenuItem(
                //             value: items,
                //             child: Text(items),
                //           );
                //         }).toList(),
                //         // After selecting the desired option,it will
                //         // change button value to selected value
                //         onChanged: (String? newValue) {
                //           setState(() {
                //             stateValue = newValue!;
                //           });
                //         },
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.65,
            child: ListView.builder(
                itemCount: stateValue.values.first.length,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  Subsidy subsidy = stateValue.values.first[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 4,
                    color: Constants.primaryColor,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: subsidy.imageURL,
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            subsidy.name,
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // trailing: const Text(
                          //   '\$50',
                          //   style: TextStyle(fontSize: 20),
                          // ),
                          subtitle: Text(
                            subsidy.description + '\n' + subsidy.eligibility,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        subsidy.websiteURL == ''
                            ? Container()
                            : Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextButton(
                                  onPressed: () {
                                    print("Hi");

                                    launchUrl(Uri.parse(subsidy.websiteURL));
                                  },
                                  style: TextButton.styleFrom(
                                      backgroundColor: Constants.secondaryColor,
                                      minimumSize: Size(
                                          MediaQuery.of(context).size.width,
                                          56)),
                                  child: Text(
                                    lang == 'ENG'
                                        ? 'Register'
                                        : 'पंजीकरण करवाना',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                              )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
