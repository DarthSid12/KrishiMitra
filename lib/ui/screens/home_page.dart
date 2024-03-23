// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_onboarding/api.dart';
import 'package:flutter_onboarding/constants.dart';
import 'package:flutter_onboarding/ui/screens/widgets/subsidy_widget.dart';

class HomePage extends StatefulWidget {
  final Function() diseaseRecognise;
  final Function() goToSubsidy;
  final Stream<String> stream;
  final String lang;
  const HomePage({
    Key? key,
    required this.diseaseRecognise,
    required this.goToSubsidy,
    required this.stream,
    required this.lang,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String city = '';
  String lang = '';
  Map? weatherData;
  List<Map> forecastData = [];
  void startDataSequence() async {
    city = await OpenWeatherAPI.getLocation();
    print("Got city: " + city);
    if (mounted) {
      setState(() {});
    }
    OpenWeatherAPI.getWeather(city).then((data) {
      weatherData = {
        'temp': data['current']['temp_c'].toString(),
        'highAndLow':
            "${data['current']['condition']['text']} H:${data['forecast']['forecastday'][0]['day']['maxtemp_c'].toString().substring(0, 2)}° L:${data['forecast']['forecastday'][0]['day']['mintemp_c'].toString().substring(0, 2)}°",
        'icon': 'https:' + data['current']['condition']['icon']
      };
      print("DOing weather");
      if (mounted) {
        setState(() {});
      }

      forecastData =
          data['forecast']['forecastday'].sublist(1).map<Map>((data) {
        print(data);
        return {
          'temp':
              "${data['day']['maxtemp_c'].toString().substring(0, 2)}°/${data['day']['mintemp_c'].toString().substring(0, 2)}°",
          'icon': 'https:' + data['day']['condition']['icon'],
          'date': data['date'].toString().substring(5, 10)
        };
      }).toList();
      print("Doing forecast");
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void initState() {
    startDataSequence();
    lang = widget.lang;
    widget.stream.listen((event) {
      lang = event;
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //Toggle Favorite button
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              CurrentWeather(city, weatherData, context),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: size.height * .23,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          launchUrl(Uri.http('agmarknet.gov.in'));
                        },
                        child: Container(
                          width: size.width * 0.45,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      lang == 'ENG'
                                          ? "MARKET\nPRICES"
                                          : "बाज़ार\nकीमतें",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                          fontSize: 21)),
                                  Image.asset(
                                    'assets/images/rupee.png',
                                    height: 60,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                lang == 'ENG'
                                    ? "Get the current market prices of all the crops"
                                    : "सभी फसलों की वर्तमान बाजार कीमतें प्राप्त करें",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  // fontStyle: FontStyle.italic,
                                ),
                                maxLines: 5,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Constants.secondaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://www.livemint.com/industry/agriculture'));
                        },
                        child: Container(
                          width: size.width * 0.45,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      lang == 'ENG'
                                          ? "AGRO\nNEWS"
                                          : "कृषि\nसमाचार",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                          fontSize: 23)),
                                  Image.asset(
                                    'assets/images/news.png',
                                    height: 60,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                lang == 'ENG'
                                    ? "Get the latest news in agriculture"
                                    : "कृषि में नवीनतम समाचार प्राप्त करें",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  // fontStyle: FontStyle.italic,
                                ),
                                maxLines: 5,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Constants.secondaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              Center(
                child: InkWell(
                  onTap: widget.diseaseRecognise,
                  child: Container(
                    // height: 150,
                    width: size.width * 0.92,
                    decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  lang == 'ENG'
                                      ? "DISEASE RECOGNITION"
                                      : "रोग पहचान",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontSize: 23)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                lang == 'ENG'
                                    ? "Click here,upload or click a picture,get disease and cure"
                                    : "यहां क्लिक करें, अपलोड करें या चित्र क्लिक करें, बीमारी और इलाज पाएं",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  // fontStyle: FontStyle.italic,
                                ),
                                maxLines: 5,
                              )
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: ,
                        // ),
                        Image.asset(
                          'assets/images/plant-six.png',
                          height: 80,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 16, bottom: 10, top: 20, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      lang == 'ENG'
                          ? "Schemes and Subsidies"
                          : "योजनाएं और सब्सिडी",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        widget.goToSubsidy();
                      },
                      child: Text(
                        lang == 'ENG' ? "View all" : "सभी को देखें",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: size.height * .5,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            if (Constants.allIndiaSubsidiesEnglish[index]
                                    .websiteURL !=
                                '') {
                              launchUrl(Uri.parse(Constants
                                  .allIndiaSubsidiesEnglish[index].websiteURL));
                            }
                          },
                          child: SubsidyItem(
                            index: index,
                            subsidyList: lang == 'ENG'
                                ? Constants.allIndiaSubsidiesEnglish
                                : Constants.allIndiaSubsidiesHindi,
                          ));
                    }),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  Widget CurrentWeather(String city, Map? data, BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: GoogleFonts.aboretoTextTheme(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Constants.primaryColor),
          padding: const EdgeInsets.all(15),
          child: data == null
              ? Center(
                  child: CircularProgressIndicator(
                    color: Constants.secondaryColor,
                  ),
                )
              : Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['temp'].toString().substring(0, 2) + '° ',
                            style: GoogleFonts.robotoTextTheme()
                                .bodySmall!
                                .copyWith(color: Colors.white, fontSize: 54)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              city,
                              style: GoogleFonts.robotoTextTheme()
                                  .bodySmall!
                                  .copyWith(color: Colors.white, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['highAndLow'],
                              style: GoogleFonts.robotoTextTheme()
                                  .bodySmall!
                                  .copyWith(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.network(
                          data['icon'],
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: forecastData
                          .map<Widget>((e) => Column(
                                children: [
                                  Text(e['date'],
                                      style: GoogleFonts.robotoTextTheme()
                                          .bodySmall!
                                          .copyWith(
                                              fontSize: 13,
                                              color: Colors.grey[300])),
                                  Image.network(
                                    e['icon'],
                                    width: 32,
                                    height: 32,
                                  ),
                                  Text(e['temp'],
                                      style: GoogleFonts.robotoTextTheme()
                                          .bodySmall!
                                          .copyWith(
                                              fontSize: 13,
                                              color: Colors.grey[300])),
                                ],
                              ))
                          .toList(),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
