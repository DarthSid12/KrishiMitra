// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Constants {
  //Primary color
  static var primaryColor = const Color(0xff296e48);
  static var secondaryColor = const Color(0xffFFC000);
  static var blackColor = Colors.black54;

  //Onboarding texts
  static var titleOne = "Discover suitable schemes";
  static var descriptionOne = "We find subsidies and schemes that suit you";
  static var titleTwo = "Identify diseases";
  static var descriptionTwo =
      "Click an image of plant leaf and find out its health";
  static var titleThree = "Market Prices ";
  static var descriptionThree = "Live data of current market prices of crops";
  static var titleFour = "Weather Forecast";
  static var descriptionFour = "Get rain predictions for next 5 days";

  static var hindititleOne = "उपयुक्त योजनाओं खोजे";
  static var hindidescriptionOne =
      "हम आपके लिए उपयुक्त सब्सिडी और योजनाएं ढूंढते हैं";
  static var hindititleTwo = "बीमारियों को पहचानें";
  static var hindidescriptionTwo =
      "पौधे की पत्ती की तस्वीर क्लिक करें और उसके स्वास्थ्य का पता लगाएं";
  static var hindititleThree = "बाज़ार कीमतें";
  static var hindidescriptionThree =
      "फसलों की मौजूदा बाजार कीमतों का लाइव डेटा";
  static var hindititleFour = "मौसम पूर्वानुमान";
  static var hindidescriptionFour =
      "अगले 5 दिनों के लिए बारिश की भविष्यवाणी प्राप्त करें";

  static final List<Subsidy> allIndiaSubsidiesEnglish = [
    Subsidy(
        name: 'Pradhan Mantri Kisan Samman Nidhi (PM-KISAN)',
        description:
            'Purpose: Direct income support to farmers\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: INR 6,000 per annum (paid in 3 installments)',
        imageURL: 'https://deepakcsc.com/wp-content/uploads/2023/11/4-1.jpg',
        websiteURL: 'https://pmkisan.gov.in/',
        location: 'All India',
        eligibility:
            'Small and marginal farmers owning less than 2 hectares of cultivable land'),
    Subsidy(
        name: 'Rashtriya Krishi Vikas Yojana (RKVY)',
        description:
            'Purpose: To promote agricultural development\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL:
            'https://karimganj.assam.gov.in/sites/default/files/styles/scheme_cover_image_for_details_page_710x402_/public/public_utility/image1.jpg',
        websiteURL: 'https://rkvy.nic.in/',
        location: 'All India',
        eligibility: 'All States and Union Territories'),
    Subsidy(
        name: 'Pradhan Mantri Fasal Bima Yojana (PMFBY)',
        description:
            'Purpose: Crop insurance scheme\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Premium subsidized by government (premium rates vary by crop)',
        imageURL:
            'https://upload.wikimedia.org/wikipedia/en/b/b4/Pradhan_Mantri_Fasal_Bima_Yojana_%28PMFBY%29_logo.png',
        websiteURL: 'https://pmfby.gov.in/',
        location: 'All India',
        eligibility: 'All farmers including sharecroppers and tenant farmers'),
    Subsidy(
        name: 'Soil Health Card Scheme',
        description:
            'Purpose: To assess soil health and provide recommendations to farmers\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL:
            'https://www.modiyojana.com/wp-content/uploads/2018/12/Soil-Health-card.jpg',
        websiteURL: 'https://soilhealth.dac.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'National Food Security Mission (NFSM)',
        description:
            'Purpose: To increase the production of rice, wheat, pulses, and coarse cereals\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by crop and state',
        imageURL:
            'https://charaideo.assam.gov.in/sites/default/files/styles/scheme_cover_image_for_details_page_710x402_/public/2022-06/download.jpg',
        websiteURL: 'http://nfsm.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Pradhan Mantri Kisan Credit Card (PM-KCC)',
        description:
            'Purpose: Credit support for farmers\nAgency: Banks and Cooperative Societies\nAmount: Credit limit based on landholding and cropping pattern',
        imageURL:
            'https://cdn.zeebiz.com/sites/default/files/2023/08/11/255951-news18-bl-zb.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Sub-Mission on Agricultural Mechanization',
        description:
            'Purpose: To promote farm mechanization\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL:
            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/farmer-tractor-logo-design-template-f6200abe6c8e00f6b5b61cd54c636399_screen.jpg?ts=1678197165',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'National Horticulture Mission (NHM)',
        description:
            'Purpose: To promote horticulture production\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL:
            'https://img3.exportersindia.com/product_images/bc-full/dir_65/1931437/national-horticulture-mission-certification-servic_1171852.jpg',
        websiteURL: 'http://nhm.nic.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Pradhan Mantri Krishi Sinchayee Yojana (PMKSY)',
        description:
            'Purpose: To improve water use efficiency in agriculture\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by component',
        imageURL:
            'https://www.mapsofindia.com/ci-moi-images/my-india/2015/07/pradhan-mantri-krishi-sinchai-yojana.jpg',
        websiteURL: 'https://pmksy.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Paramparagat Krishi Vikas Yojana (PKVY)',
        description:
            'Purpose: Organic farming promotion\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL:
            'https://cdn5.vectorstock.com/i/1000x1000/52/29/organic-farm-logo-vector-16475229.jpg',
        websiteURL: 'https://www.agricoop.gov.in/schemesagri',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'National Mission for Sustainable Agriculture (NMSA)',
        description:
            'Purpose: To promote sustainable agriculture practices\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by component',
        imageURL:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBsRmJP3UZq-xP61S2dMqOdJHz9aL1xZMnyEW97JcYSgMeFe7DcOvqFRmg7GXquqCw9A0&usqp=CAU',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'National Bamboo Mission (NBM)',
        description:
            'Purpose: To promote bamboo cultivation and utilization\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL:
            'https://www.en.krishakjagat.org/wp-content/uploads/2020/09/Bamboo-390x205.jpg',
        websiteURL: 'https://nbm.nic.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Interest Subvention Scheme for Agriculture Loans',
        description:
            'Purpose: To provide interest subsidy on agricultural loans\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by scheme',
        imageURL:
            'https://upload.wikimedia.org/wikipedia/commons/1/1b/Seal_of_the_Reserve_Bank_of_India.svg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'National Livestock Mission (NLM)',
        description:
            'Purpose: To promote livestock development\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL: 'https://pbs.twimg.com/media/F425g-dbwAAnW1v.jpg:large',
        websiteURL: 'http://nagricoop.nic.in/nlm',
        location: 'All India',
        eligibility: 'Livestock farmers'),
    Subsidy(
        name: 'Pradhan Mantri Annadata Aay Sanrakshan Abhiyan (PM-AASHA)',
        description:
            'Purpose: Price support scheme for crops\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by crop and procurement season',
        imageURL:
            'https://www.india.gov.in/sites/upload_files/npi/files/spotlights/aasha01.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'Farmers of selected crops (pulses, oilseeds, and copra)'),
    Subsidy(
        name: 'Agricultural Marketing Infrastructure (AMI) Scheme',
        description:
            'Purpose: To develop agricultural marketing infrastructure\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by project',
        imageURL: 'https://pbs.twimg.com/media/E0x1PVTUYAUt7Jc.jpg:large',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'National Mission on Oilseeds and Oil Palm (NMOOP)',
        description:
            'Purpose: To increase oilseed production and productivity\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL:
            'https://i.pinimg.com/736x/08/0c/79/080c7910c50ce6551fe7a03264011d7e.jpg',
        websiteURL: 'https://nmoop.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Mission for Integrated Development of Horticulture (MIDH)',
        description:
            'Purpose: To promote holistic growth of horticulture sector\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL:
            'https://www.shutterstock.com/image-vector/young-man-watering-plants-garden-260nw-1933086014.jpg',
        websiteURL: 'http://midh.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Sub-Mission on Seeds and Planting Material (SMSP)',
        description:
            'Purpose: To promote quality seed production\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by component',
        imageURL:
            'https://t3.ftcdn.net/jpg/01/06/69/32/360_F_106693271_zzajZPlJgoVgwz8rE2xP0YMUijrwGDp5.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'Seed growers, farmers, and seed enterprises'),
    Subsidy(
        name: 'Agricultural Extension Services',
        description:
            'Purpose: To provide agricultural extension services and training\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by state',
        imageURL: 'https://i.ytimg.com/vi/6896Nwydzg0/maxresdefault.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Rashtriya Gokul Mission',
        description:
            'Purpose: To conserve and develop indigenous breeds of cattle\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Varies by component',
        imageURL:
            'https://crackittoday.com/wp-content/uploads/2022/12/rashtriya.jpg',
        websiteURL: 'https://rashtriyagokulmission.icar.gov.in/',
        location: 'All India',
        eligibility: 'Farmers and livestock breeders'),
    Subsidy(
        name: 'Kisan Vikas Patra (KVP)',
        description:
            'Purpose: Investment scheme for farmers\nAgency: Ministry of Finance\nAmount: Varies by investment',
        imageURL:
            'https://img.naidunia.com/naidunia/ndnimg/11102021/11_10_2021-kisan-vikas-patra_20211011_194757.jpg',
        websiteURL: 'https://www.indiapost.gov.in/VAS/Pages/Content/KVP',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'Subsidy on Drip Irrigation Systems',
        description:
            'Purpose: To promote efficient water use in agriculture\nAgency: Ministry of Agriculture & Farmers Welfare\nAmount: Subsidy on purchase and installation of drip irrigation systems',
        imageURL:
            'https://kjcdn.gumlet.io/media/44554/micro-irrigation-scheme.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'Farmers adopting drip irrigation'),
  ];
  static final List<Subsidy> allIndiaSubsidiesHindi = [
    Subsidy(
        name: 'प्रधान मंत्री किसान सम्मान निधि (PM-KISAN)',
        description:
            'Purpose: किसानों को सीधा आय समर्थन\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: INR 6,000 per annum (paid in 3 installments)',
        imageURL: 'https://deepakcsc.com/wp-content/uploads/2023/11/4-1.jpg',
        websiteURL: 'https://pmkisan.gov.in/',
        location: 'All India',
        eligibility:
            'Small and marginal farmers owning less than 2 hectares of cultivable land'),
    Subsidy(
        name: 'राष्ट्रीय कृषि विकास योजना (RKVY)',
        description:
            'Purpose: कृषि विकास को बढ़ावा देने के लिए\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL:
            'https://karimganj.assam.gov.in/sites/default/files/styles/scheme_cover_image_for_details_page_710x402_/public/public_utility/image1.jpg',
        websiteURL: 'https://rkvy.nic.in/',
        location: 'All India',
        eligibility: 'All States and Union Territories'),
    Subsidy(
        name: 'प्रधान मंत्री फसल बीमा योजना (PMFBY)',
        description:
            'Purpose: फसल बीमा योजना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Premium subsidized by government (premium rates vary by crop)',
        imageURL:
            'https://upload.wikimedia.org/wikipedia/en/b/b4/Pradhan_Mantri_Fasal_Bima_Yojana_%28PMFBY%29_logo.png',
        websiteURL: 'https://pmfby.gov.in/',
        location: 'All India',
        eligibility: 'All farmers including sharecroppers and tenant farmers'),
    Subsidy(
        name: 'Soil Health Card योजना',
        description:
            'Purpose: मिट्टी स्वास्थ्य का मूल्यांकन करना और किसानों को सिफारिशें प्रदान करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL:
            'https://www.modiyojana.com/wp-content/uploads/2018/12/Soil-Health-card.jpg',
        websiteURL: 'https://soilhealth.dac.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'राष्ट्रीय खाद्य सुरक्षा मिशन (NFSM)',
        description:
            'Purpose: धान, गेहूं, दालें और अनाज के उत्पादन को बढ़ाने के लिए\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by crop and state',
        imageURL:
            'https://charaideo.assam.gov.in/sites/default/files/styles/scheme_cover_image_for_details_page_710x402_/public/2022-06/download.jpg',
        websiteURL: 'http://nfsm.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'प्रधान मंत्री किसान क्रेडिट कार्ड (PM-KCC)',
        description:
            'Purpose: किसानों के लिए क्रेडिट समर्थन\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Credit limit based on landholding and cropping pattern',
        imageURL:
            'https://cdn.zeebiz.com/sites/default/files/2023/08/11/255951-news18-bl-zb.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'कृषि मैकेनिज़ेशन पर उप-मिशन',
        description:
            'Purpose: खेती का साधनीकरण प्रोत्साहन\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL:
            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/farmer-tractor-logo-design-template-f6200abe6c8e00f6b5b61cd54c636399_screen.jpg?ts=1678197165',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'राष्ट्रीय बागवानी मिशन (NHM)',
        description:
            'Purpose: बागवानी उत्पादन को बढ़ाने के लिए\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL:
            'https://img3.exportersindia.com/product_images/bc-full/dir_65/1931437/national-horticulture-mission-certification-servic_1171852.jpg',
        websiteURL: 'http://nhm.nic.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'प्रधान मंत्री कृषि सिंचाई योजना (PMKSY)',
        description:
            'Purpose: कृषि में पानी के उपयोग की कुशलता में सुधार\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by component',
        imageURL:
            'https://www.mapsofindia.com/ci-moi-images/my-india/2015/07/pradhan-mantri-krishi-sinchai-yojana.jpg',
        websiteURL: 'https://pmksy.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'परंपरागत कृषि विकास योजना (PKVY)',
        description:
            'Purpose: जैविक खेती को प्रोत्साहित करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL:
            'https://cdn5.vectorstock.com/i/1000x1000/52/29/organic-farm-logo-vector-16475229.jpg',
        websiteURL: 'https://www.agricoop.gov.in/schemesagri',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'सतत कृषि के लिए राष्ट्रीय मिशन (NMSA)',
        description:
            'Purpose: सतत कृषि अभ्यासों को प्रोत्साहित करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by component',
        imageURL:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBsRmJP3UZq-xP61S2dMqOdJHz9aL1xZMnyEW97JcYSgMeFe7DcOvqFRmg7GXquqCw9A0&usqp=CAU',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'राष्ट्रीय बांस मिशन (NBM)',
        description:
            'Purpose: बांस की खेती और उपयोग को प्रोत्साहित करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL:
            'https://www.en.krishakjagat.org/wp-content/uploads/2020/09/Bamboo-390x205.jpg',
        websiteURL: 'https://nbm.nic.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'कृषि ऋणों पर ब्याज अनुदान योजना',
        description:
            'Purpose: कृषि ऋणों पर ब्याज सब्सिडी प्रदान करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by scheme',
        imageURL:
            'https://upload.wikimedia.org/wikipedia/commons/1/1b/Seal_of_the_Reserve_Bank_of_India.svg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'राष्ट्रीय पशुपालन मिशन (NLM)',
        description:
            'Purpose: पशुपालन विकास को प्रोत्साहित करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL: 'https://pbs.twimg.com/media/F425g-dbwAAnW1v.jpg:large',
        websiteURL: 'http://nagricoop.nic.in/nlm',
        location: 'All India',
        eligibility: 'Livestock farmers'),
    Subsidy(
        name: 'प्रधान मंत्री अन्नदाता आय संरक्षण अभियान (PM-AASHA)',
        description:
            'Purpose: फसलों के लिए मूल्य समर्थन योजना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by crop and procurement season',
        imageURL:
            'https://www.india.gov.in/sites/upload_files/npi/files/spotlights/aasha01.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'Farmers of selected crops (pulses, oilseeds, and copra)'),
    Subsidy(
        name: 'कृषि विपणन बुनियादी ढांचा (AMI) योजना',
        description:
            'Purpose: कृषि विपणन बुनियादी ढांचा विकसित करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by project',
        imageURL: 'https://pbs.twimg.com/media/E0x1PVTUYAUt7Jc.jpg:large',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'तिलहनी और तिलहनी खोप राष्ट्रीय मिशन (NMOOP)',
        description:
            'Purpose: तिलहनी और तिलहनी खोप के उत्पादन और उत्पादकता को बढ़ाना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL:
            'https://i.pinimg.com/736x/08/0c/79/080c7910c50ce6551fe7a03264011d7e.jpg',
        websiteURL: 'https://nmoop.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'बागवानी के एकीकृत विकास के लिए मिशन (MIDH)',
        description:
            'Purpose: बागवानी क्षेत्र के समग्र विकास को प्रोत्साहित करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL:
            'https://www.shutterstock.com/image-vector/young-man-watering-plants-garden-260nw-1933086014.jpg',
        websiteURL: 'http://midh.gov.in/',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'बीज और रोपाई सामग्री पर उप-मिशन (SMSP)',
        description:
            'Purpose: गुणवत्ता बीज उत्पादन को प्रोत्साहित करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by component',
        imageURL:
            'https://t3.ftcdn.net/jpg/01/06/69/32/360_F_106693271_zzajZPlJgoVgwz8rE2xP0YMUijrwGDp5.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'Seed growers, farmers, and seed enterprises'),
    Subsidy(
        name: 'कृषि विस्तार सेवाएँ',
        description:
            'Purpose: कृषि विस्तार सेवाएँ और प्रशिक्षण प्रदान करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by state',
        imageURL: 'https://i.ytimg.com/vi/6896Nwydzg0/maxresdefault.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'राष्ट्रीय गोकुल मिशन (Rashtriya Gokul Mission)',
        description:
            'Purpose: स्थानीय नस्लों की संरक्षण और विकास करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by component',
        imageURL:
            'https://crackittoday.com/wp-content/uploads/2022/12/rashtriya.jpg',
        websiteURL: 'https://rashtriyagokulmission.icar.gov.in/',
        location: 'All India',
        eligibility: 'Farmers and livestock breeders'),
    Subsidy(
        name: 'किसान विकास पत्र (KVP)',
        description:
            'Purpose: किसानों के लिए निवेश योजना\nAgency: वित्त मंत्रालय\nAmount: Varies by investment',
        imageURL:
            'https://img.naidunia.com/naidunia/ndnimg/11102021/11_10_2021-kisan-vikas-patra_20211011_194757.jpg',
        websiteURL: 'https://www.indiapost.gov.in/VAS/Pages/Content/KVP',
        location: 'All India',
        eligibility: 'All farmers'),
    Subsidy(
        name: 'ड्रिप इरिगेशन प्रणालियों पर सब्सिडी',
        description:
            'Purpose: कृषि में पानी के चुस्त उपयोग को प्रोत्साहित करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Subsidy on purchase and installation of drip irrigation systems',
        imageURL:
            'https://kjcdn.gumlet.io/media/44554/micro-irrigation-scheme.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'Farmers adopting drip irrigation'),
    Subsidy(
        name: 'कृषि विपणन के लिए एकीकृत योजना (ISAM)',
        description:
            'Purpose: कृषि विपणन बुनियादी ढांचा को मजबूत करना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by project',
        imageURL:
            'https://img.indiafilings.com/learn/wp-content/uploads/2019/04/12004505/Integrated-Scheme-for-Agricultural-Marketing-1.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'Farmers, cooperatives, and marketing organizations'),
    Subsidy(
        name: 'मूल्य स्थिरीकरण कोष (PSF)',
        description:
            'Purpose: कृषि उत्पादों की मूल्य स्थिरीकरण योजना\nAgency: कृषि और किसान कल्याण मंत्रालय\nAmount: Varies by commodity',
        imageURL:
            'https://www.shutterstock.com/image-illustration/time-money-260nw-160995848.jpg',
        websiteURL: 'nan',
        location: 'All India',
        eligibility: 'Farmers and traders'),
  ];
  static final List<Subsidy> haryanaSubsidies = [
    Subsidy(
        name: 'Reclamation of Saline soils and Waterlogged Land in the State',
        description:
            'Purpose:Construction and operation of vertical multilevel drainage systems\nAgency:CCSRI,Karnal',
        imageURL:
            'https://www.researchgate.net/publication/242316610/figure/fig1/AS:669535539572741@1536641120326/Diagram-of-saline-soil-reclamation-in-Nanpi-County.png',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            'Atleast 250 acre of land in a cluster in a village and all the farmers must consent'),
    Subsidy(
        name:
            'Natural Farming - Promotion of Sustainable agriculture strategies intiative & Kisan kalyan',
        description:
            'Purpose:To make farmers aware of Natural Farming and encourage them to adopt new techniques\nAgency:Agriculture Minsitry Haryana',
        imageURL:
            'https://aatmnirbharsena.org/blog/wp-content/uploads/2021/01/Mission-Kisan-Kalyan-1.jpg',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'No Criteria'),
    Subsidy(
        name:
            'Demonstration on Intercropping with sugarcane under NFSM-CC-Sugarcane',
        description:
            'Purpose:To increase income of farmers and area of sugarcane production\nAgency:Agriculture Minsitry Haryana',
        imageURL:
            'https://kjcdn.gumlet.io/media/11171/interpluscroppingplusmoongpluswithplussugarcane-kj.jpg',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'No Criteria'),
    Subsidy(
        name: 'Technology Mission on Sugarcane (TMS) scheme',
        description:
            'Purpose:The scheme “Technology Mission on Sugarcane (TMS)” is being implemented in the state to encourage the sugarcane cultivation.\nAgency:Agriculture Minsitry Haryana',
        imageURL:
            'https://images.hindustantimes.com/img/2022/12/13/1600x900/-Haryana-farming-dept-bypass-tender-process-to-buy_1670954819323.jpg',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'No Criteria'),
    Subsidy(
        name: 'Dhaincha seed Distribution under CDP',
        description:
            'Purpose:Department is planning promoting Dhaincha as a green manuring crop by providing seed to the farmers at 80% subsidized cost.\nAgency:Agriculture Minsitry Haryana',
        imageURL: 'https://kjcdn.gumlet.io/media/11174/sugarcane-kj.jpg',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'No Criteria'),
  ];
  static final List<Subsidy> haryanaSubsidiesHindi = [
    Subsidy(
        name: 'राज्य में नमी और जलभरावित भूमि का जलवायुवदी भूमि में सुधार',
        description:
            'Purpose:लंबवत बहुस्तरीय निकासी प्रणालियों का निर्माण और परिचालन\nAgency:सीसीएसआरआई, करनाल',
        imageURL:
            'https://www.researchgate.net/publication/242316610/figure/fig1/AS:669535539572741@1536641120326/Diagram-of-saline-soil-reclamation-in-Nanpi-County.png',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            'एक गांव में एक क्लस्टर में कम से कम 250 एकड़ जमीन और सभी किसानों की सहमति होनी चाहिए'),
    Subsidy(
        name:
            'प्राकृतिक खेती - सतत कृषि रणनीतियों की प्रोत्साहन और किसान कल्याण',
        description:
            'Purpose:किसानों को प्राकृतिक खेती के बारे में जागरूक करना और उन्हें नई तकनीकों को अपनाने के लिए प्रोत्साहित करना\nAgency:सीसीएसआरआई, करनाल',
        imageURL:
            'https://aatmnirbharsena.org/blog/wp-content/uploads/2021/01/Mission-Kisan-Kalyan-1.jpg',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'कोई नहीं'),
    Subsidy(
        name: 'एनएफएसएम-सीसी-गन्ना के तहत गन्ने के साथ मिश्र खेती पर प्रदर्शन',
        description:
            'Purpose:किसानों की आय और गन्ने की उत्पादन क्षेत्र को बढ़ाना\nAgency:सीसीएसआरआई, करनाल',
        imageURL:
            'https://kjcdn.gumlet.io/media/11171/interpluscroppingplusmoongpluswithplussugarcane-kj.jpg',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'कोई नहीं'),
    Subsidy(
        name: 'गन्ने पर प्रौद्योगिकी मिशन (टीएमएस) योजना',
        description:
            'Purpose:राज्य में गन्ने की खेती को बढ़ावा देने के लिए "गन्ने पर प्रौद्योगिकी मिशन (टीएमएस)" योजना को कार्यान्वित किया जा रहा है।\nAgency:सीसीएसआरआई, करनाल',
        imageURL:
            'https://images.hindustantimes.com/img/2022/12/13/1600x900/-Haryana-farming-dept-bypass-tender-process-to-buy_1670954819323.jpg',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'कोई नहीं'),
    Subsidy(
        name: 'सीडीपी के तहत धैन्चा बीज वितरण',
        description:
            'Purpose:विभाग धैन्चा को हरा खादी फसल के रूप में प्रमोट करने की योजना बना रहा है और किसानों को 80% अनुदानित लागत पर बीज प्रदान करने की योजना बना रहा है।\nAgency:सीसीएसआरआई, करनाल',
        imageURL: 'https://kjcdn.gumlet.io/media/11174/sugarcane-kj.jpg',
        websiteURL: 'https://agriharyana.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'कोई नहीं'),
  ];
  static final List<Subsidy> punjabSubsidiesHindi = [
    Subsidy(
        name: 'गेहूं के बीज की सब्सिडी',
        description:
            'Purpose:लंबवत मल्टीलेवल निर्जलीकरण प्रणालियों का निर्माण और परिचालन।\nAgency:सीसीएसआरआई, करनाल',
        imageURL:
            'https://images.indianexpress.com/2023/09/wheat-seeds-subsidy.jpg',
        websiteURL: 'https://agri.punjab.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            'गाँव में एक क्लस्टर में कम से कम 250 एकड़ भूमि और सभी किसानों की सहमति चाहिए।'),
    Subsidy(
        name: 'मक्के के बीज की सब्सिडी',
        description:
            'Purpose:किसानों को प्राकृतिक खेती के बारे में जागरूक करना और उन्हें नई तकनीकों को अपनाने के लिए प्रोत्साहित करना।\nAgency:पंजाब कृषि मंत्रालय',
        imageURL:
            'https://englishtribuneimages.blob.core.windows.net/gallary-content/2021/5/Desk/2021_5\$largeimg_455057496.jpg',
        websiteURL: 'https://agri.punjab.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'कोई नहीं'),
    Subsidy(
        name: 'ISOPOM योजना',
        description:
            'Purpose:देश में सोयाबीन सहित तिलहनों का उत्पादन बढ़ाने के लिए सरकार तिलहन, दलहन, ऑयल पाम की केंद्र प्रायोजित एकीकृत योजना लागू कर रही है।\nAgency:पंजाब कृषि मंत्रालय',
        imageURL: 'https://www.abbreviations.com/images/1520916_ISOPOM.png',
        websiteURL: 'https://agri.punjab.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'कोई नहीं'),
  ];
  static final List<Subsidy> punjabSubsidies = [
    Subsidy(
        name: 'Wheat seed subsidy',
        description:
            'Purpose:Construction and operation of vertical multilevel drainage systems\nAgency:CCSRI,Karnal',
        imageURL:
            'https://images.indianexpress.com/2023/09/wheat-seeds-subsidy.jpg',
        websiteURL: 'https://agri.punjab.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            'Atleast 250 acre of land in a cluster in a village and all the farmers must consent'),
    Subsidy(
        name: 'Maize Seed Subsidy',
        description:
            'Purpose:To make farmers aware of Natural Farming and encourage them to adopt new techniques\nAgency:Agriculture Minsitry Punjab',
        imageURL:
            'https://englishtribuneimages.blob.core.windows.net/gallary-content/2021/5/Desk/2021_5\$largeimg_455057496.jpg',
        websiteURL: 'https://agri.punjab.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'No Criteria'),
    Subsidy(
        name: 'ISOPOM Scheme',
        description:
            'Purpose:To increase production of oilseeds including soyabean in the country, the Government is implementing a Centrally Sponsored Integrated Scheme of Oilseeds, Pulses, Oil Palm\nAgency:Agriculture Minsitry Punjab',
        imageURL: 'https://www.abbreviations.com/images/1520916_ISOPOM.png',
        websiteURL: 'https://agri.punjab.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'No Criteria'),
  ];
  static final List<Subsidy> wbSubsidies = [
    Subsidy(
        name: 'Krishak Bandhu Scheme',
        description:
            'Financial assistance to farmers through annual income support and death benefit schemes.',
        imageURL:
            'https://static.langimg.com/thumb/msid-96647814,imgsize-66676,width-540,height-405,resizemode-75/krishak-bandhu-scheme-96647814.jpg',
        websiteURL: 'www.krishakbandhu.net',
        location: 'Madhya Pradesh',
        eligibility: 'All farmers holding agricultural land.'),
    Subsidy(
        name: 'Bangla Krishi Sech Yojana',
        description:
            'Scheme providing financial assistance for agricultural investments, inputs, and infrastructural development.',
        imageURL:
            'https://pradhanmantriyojana.co.in/wp-content/uploads/2018/09/Krishi-Sech-Yojana-in-West-Bengal.jpg',
        websiteURL: 'www.wbagrimarketingboard.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'All farmers, agricultural laborers, and SHG members involved in agriculture.'),
    Subsidy(
        name: 'Bangla Fasal Bima Yojana',
        description:
            'Crop insurance scheme providing financial protection to farmers against crop loss due to calamities.',
        imageURL:
            'https://pmmodiyojana.in/wp-content/uploads/2021/03/Bangla-Shasya-Bima.jpg',
        websiteURL: 'www.banglafasalbima.net',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers availing crop loans from recognized financial institutions.'),
    Subsidy(
        name: 'Krishak Sahayata Kendra',
        description:
            'Assistance centers providing support and guidance to farmers affected by natural calamities.',
        imageURL:
            'https://content.jdmagicbox.com/comp/beed/f4/9999p2442.2442.180818152722.x3f4/catalogue/om-sai-hotel-adas-adas-beed-hotels-m3b126rdpz.jpg',
        websiteURL: 'Not available',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers who are victims of natural disasters.'),
    Subsidy(
        name: 'West Bengal Crop Insurance Scheme',
        description:
            'Crop insurance scheme providing financial security to farmers against crop loss due to calamities.',
        imageURL:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Reserve_Bank_of_India_logo.svg/1280px-Reserve_Bank_of_India_logo.svg.png',
        websiteURL: 'www.wbagrimarketingboard.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers availing crop loans from financial institutions.'),
    Subsidy(
        name: 'Soil Health Card Scheme',
        description:
            'Scheme providing soil health cards to farmers, aiding informed decisions on soil management.',
        imageURL:
            'https://www.modiyojana.com/wp-content/uploads/2018/12/Soil-Health-card.jpg',
        websiteURL: 'www.soilhealth.dac.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'All farmers in West Bengal.'),
    Subsidy(
        name: 'Kisan Credit Card Scheme',
        description:
            'Credit facility for farmers to meet agricultural expenses including production, maintenance, etc.',
        imageURL:
            'https://cdn.zeebiz.com/sites/default/files/2023/08/11/255951-news18-bl-zb.jpg',
        websiteURL: 'www.pm-kisan.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers with agricultural landholding, availing crop loans from banks.'),
    Subsidy(
        name: 'West Bengal Green Revolution Scheme',
        description:
            'Scheme promoting agricultural productivity and sustainability through technological interventions.',
        imageURL:
            'https://st.adda247.com/https://adda247jobs-wp-assets-prod.adda247.com/articles/wp-content/uploads/2023/02/16101506/Green-Revolution-in-India.jpg',
        websiteURL: 'Not available',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers engaged in agriculture and allied activities.'),
    Subsidy(
        name: 'West Bengal Agricultural Marketing Board Subsidy',
        description:
            'Subsidy for establishing agricultural markets and infrastructure to facilitate trade and storage.',
        imageURL:
            'https://www.wbgov.org/wp-content/uploads/2021/09/agricultural-marketing-department-300x300.jpg.webp',
        websiteURL: 'www.wbagrimarketingboard.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'Individuals or organizations involved in agriculture marketing activities.'),
  ];
  static final List<Subsidy> wbSubsidiesHindi = [
    Subsidy(
        name: 'कृषक बंधु योजना',
        description:
            'वार्षिक आय सहायता और मृत्यु लाभ योजनाओं के माध्यम से किसानों को वित्तीय सहायता।',
        imageURL:
            'https://static.langimg.com/thumb/msid-96647814,imgsize-66676,width-540,height-405,resizemode-75/krishak-bandhu-scheme-96647814.jpg',
        websiteURL: 'www.krishakbandhu.net',
        location: 'Madhya Pradesh',
        eligibility: 'कृषि भूमि धारक सभी किसान।'),
    Subsidy(
        name: 'बांग्ला कृषि सेच योजना',
        description:
            'कृषि निवेश, उपकरण, और आधारभूत विकास के लिए वित्तीय सहायता प्रदान करने वाली योजना।',
        imageURL:
            'https://pradhanmantriyojana.co.in/wp-content/uploads/2018/09/Krishi-Sech-Yojana-in-West-Bengal.jpg',
        websiteURL: 'www.wbagrimarketingboard.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'सभी किसान, कृषि श्रमिक, और एसएचजी सदस्य जो कृषि में शामिल हैं।'),
    Subsidy(
        name: 'बांग्ला फसल बीमा योजना',
        description:
            'आपदाओं के कारण होने वाले फसल के नुकसान के खिलाफ किसानों को वित्तीय सुरक्षा प्रदान करने वाली फसल बीमा योजना।',
        imageURL:
            'https://pmmodiyojana.in/wp-content/uploads/2021/03/Bangla-Shasya-Bima.jpg',
        websiteURL: 'www.banglafasalbima.net',
        location: 'Madhya Pradesh',
        eligibility:
            'प्रमाणित वित्तीय संस्थाओं से फसल ऋण प्राप्त करने वाले किसान।'),
    Subsidy(
        name: 'कृषक सहायता केंद्र',
        description:
            'प्राकृतिक आपदाओं से प्रभावित किसानों को सहायता और मार्गदर्शन प्रदान करने वाले सहायता केंद्र।',
        imageURL:
            'https://content.jdmagicbox.com/comp/beed/f4/9999p2442.2442.180818152722.x3f4/catalogue/om-sai-hotel-adas-adas-beed-hotels-m3b126rdpz.jpg',
        websiteURL: 'Not available',
        location: 'Madhya Pradesh',
        eligibility: 'प्राकृतिक आपदा के पीड़ित किसान।'),
    Subsidy(
        name: 'पश्चिम बंगाल कृषि बीमा योजना',
        description:
            'आपदाओं के कारण होने वाले फसल के नुकसान के खिलाफ किसानों को वित्तीय सुरक्षा प्रदान करने वाली फसल बीमा योजना।',
        imageURL:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Reserve_Bank_of_India_logo.svg/1280px-Reserve_Bank_of_India_logo.svg.png',
        websiteURL: 'www.wbagrimarketingboard.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'वित्तीय संस्थाओं से फसल ऋण प्राप्त करने वाले किसान।'),
    Subsidy(
        name: 'मृदा स्वास्थ्य कार्ड योजना',
        description:
            'किसानों को मृदा स्वास्थ्य कार्ड प्रदान करने वाली योजना, जो मृदा प्रबंधन पर सूचित निर्णयों में मदद करती है।',
        imageURL:
            'https://www.modiyojana.com/wp-content/uploads/2018/12/Soil-Health-card.jpg',
        websiteURL: 'www.soilhealth.dac.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'पश्चिम बंगाल में सभी किसान।'),
    Subsidy(
        name: 'किसान क्रेडिट कार्ड योजना',
        description:
            'कृषि खर्चों को पूरा करने के लिए किसानों के लिए क्रेडिट सुविधा, समावेश में उत्पादन, रखरखाव, आदि।',
        imageURL:
            'https://cdn.zeebiz.com/sites/default/files/2023/08/11/255951-news18-bl-zb.jpg',
        websiteURL: 'www.pm-kisan.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'खेती में व्यस्त किसान और बैंक से फसल ऋण प्राप्त करने वाले किसान।'),
    Subsidy(
        name: 'पश्चिम बंगाल हरित क्रांति योजना',
        description:
            'प्रौद्योगिकी अवधारणाओं के माध्यम से कृषि उत्पादकता और संवेदनशीलता को बढ़ावा देने वाली योजना।',
        imageURL:
            'https://st.adda247.com/https://adda247jobs-wp-assets-prod.adda247.com/articles/wp-content/uploads/2023/02/16101506/Green-Revolution-in-India.jpg',
        websiteURL: 'Not available',
        location: 'Madhya Pradesh',
        eligibility: 'कृषि और संबंधित गतिविधियों में लगे किसान।'),
    Subsidy(
        name: 'पश्चिम बंगाल कृषि विपणन बोर्ड सब्सिडी',
        description:
            'व्यापार और भंडारण को सुविधाजनक बनाने के लिए कृषि बाजार और बुनियादी ढांचे के लिए सब्सिडी।',
        imageURL:
            'https://www.wbgov.org/wp-content/uploads/2021/09/agricultural-marketing-department-300x300.jpg.webp',
        websiteURL: 'www.wbagrimarketingboard.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'कृषि विपणन गतिविधियों में शामिल व्यक्तियों या संगठन।'),
  ];
  static final List<Subsidy> mpSubsidies = [
    Subsidy(
        name:
            'Financial assistance to farmers through annual income support and death benefit schemes.',
        description:
            'Price deficiency payment scheme for certain crops where farmers are compensated if the market price falls below the MSP.',
        imageURL:
            'https://pmmodiyojana.in/wp-content/uploads/2022/09/image-305.png',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility:
            'Registered farmers growing eligible crops such as soybean, maize, pulses, etc.'),
    Subsidy(
        name:
            'Scheme providing financial assistance for agricultural investments, inputs, and infrastructural development.',
        description:
            'Loan settlement scheme providing relief to farmers in distress due to loans.',
        imageURL:
            'https://uniqueias.co.in/uniqueias-master-admin-panel/DO4U/uploads/240243894018001.jpg',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers who have taken loans from scheduled commercial banks, cooperative banks, or other financial institutions.'),
    Subsidy(
        name:
            'Crop insurance scheme providing financial protection to farmers against crop loss due to calamities.',
        description:
            'Financial assistance to farmers for the purchase of agricultural equipment and machinery.',
        imageURL:
            'https://fastjobsearchers.in/wp-content/uploads/2023/05/SSC-CHSL-102.jpg',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers who are residents of Madhya Pradesh and have valid documents supporting the purchase of agricultural equipment and machinery.'),
    Subsidy(
        name:
            'Assistance centers providing support and guidance to farmers affected by natural calamities.',
        description:
            'Subsidy for establishing agricultural markets and infrastructure to facilitate trade and storage.',
        imageURL: 'https://www.upkrishivipran.in/images/agricoop.jpg',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility:
            'Individuals or organizations setting up agriculture markets and infrastructure like cold storage facilities.'),
    Subsidy(
        name:
            'Crop insurance scheme providing financial security to farmers against crop loss due to calamities.',
        description:
            'Scheme providing soil health cards to farmers, aiding informed decisions on soil management.',
        imageURL:
            'https://www.godigit.com/content/dam/godigit/directportal/en/contenthm/soil-health-card-scheme.jpg',
        websiteURL: 'www.soilhealth.dac.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'All farmers in Madhya Pradesh.'),
    Subsidy(
        name:
            'Scheme providing soil health cards to farmers, aiding informed decisions on soil management.',
        description:
            'Crop insurance scheme providing financial support to farmers in case of crop loss due to calamities.',
        imageURL:
            'https://elearn-pmfbykcc.lms.gov.in/WCR/WCRCourseLaunchFolderImages/17155/pmfby%20logo.jpg',
        websiteURL: 'www.pmfby.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'All farmers availing crop loans and cultivating notified crops in the notified areas.'),
    Subsidy(
        name:
            'Credit facility for farmers to meet agricultural expenses including production, maintenance, etc.',
        description:
            'Credit facility for farmers to meet agricultural expenses including production, maintenance, etc.',
        imageURL:
            'https://cdn.zeebiz.com/sites/default/files/2023/08/11/255951-news18-bl-zb.jpg',
        websiteURL: 'www.pm-kisan.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers with agricultural landholding, availing crop loans from banks, and having a satisfactory repayment record.'),
    Subsidy(
        name:
            'Scheme promoting agricultural productivity and sustainability through technological interventions.',
        description:
            'Scheme promoting sustainable agriculture practices such as organic farming and water management.',
        imageURL:
            'https://media.9curry.com/uploads/organization/image/3606/nmsa-logo.png',
        websiteURL: 'www.nmsa.dac.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers, Farmer Producer Organizations (FPOs), and other stakeholders involved in agriculture.'),
    Subsidy(
        name:
            'Subsidy for establishing agricultural markets and infrastructure to facilitate trade and storage.',
        description:
            'Scheme providing interest subsidy on agricultural loans, reducing the burden of interest payments.',
        imageURL:
            'https://www.federalbank.co.in/documents/10180/26262230/Agricultural+Marketing+Infrastructure+%28AMI%29+Scheme+%281%29.jpg/',
        websiteURL: 'www.agricoop.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers availing short-term crop loans from banks for crop production purposes.'),
    Subsidy(
        name: 'Krishi Vikas Yojana',
        description:
            'Agricultural development scheme aimed at increasing productivity through various interventions.',
        imageURL:
            'https://www.gstsuvidhakendra.org/hindi/wp-content/uploads/2022/01/%E0%A4%B0%E0%A4%BE%E0%A4%B7%E0%A5%8D%E0%A4%9F%E0%A5%8D%E0%A4%B0%E0%A5%80%E0%A4%AF-%E0%A4%95%E0%A5%83%E0%A4%B7%E0%A4%BF-%E0%A4%B5%E0%A4%BF%E0%A4%95%E0%A4%BE%E0%A4%B8-%E0%A4%AF%E0%A5%8B%E0%A4%9C%E0%A4%A8%E0%A4%BE.jpg',
        websiteURL: 'www.agricoop.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'All farmers, Farmer Producer Organizations (FPOs), and other stakeholders involved in agriculture.'),
  ];
  static final List<Subsidy> mpSubsidiesHindi = [
    Subsidy(
        name:
            'वार्षिक आय सहायता और मृत्यु लाभ योजनाओं के माध्यम से किसानों को वित्तीय सहायता।',
        description:
            'कुछ फसलों के लिए मूल्य अभाव भुगतान योजना, जहां किसानों को यदि बाजार मूल्य एमएसपी से कम होता है तो भुगतान किया जाता है।',
        imageURL:
            'https://pmmodiyojana.in/wp-content/uploads/2022/09/image-305.png',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility:
            'पंजीकृत किसान जो सोयाबीन, मक्का, दालें आदि जैसी पात्र फसलों की खेती कर रहे हैं।'),
    Subsidy(
        name:
            'कृषि निवेशों, इनपुट्स, और बुनियादी विकास के लिए वित्तीय सहायता प्रदान करने वाली योजना।',
        description:
            'ऋण के कारण परेशान किसानों को राहत प्रदान करने वाली ऋण समाधान योजना।',
        imageURL:
            'https://uniqueias.co.in/uniqueias-master-admin-panel/DO4U/uploads/240243894018001.jpg',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility:
            'जिन किसानों ने निर्धारित वाणिज्यिक बैंकों, सहकारी बैंकों, या अन्य वित्तीय संस्थाओं से ऋण लिया है।'),
    Subsidy(
        name:
            'आपदाओं के कारण होने वाली फसल की हानि के खिलाफ किसानों को वित्तीय सुरक्षा प्रदान करने वाली फसल बीमा योजना।',
        description:
            'कृषि उपकरण और मशीनरी की खरीद के लिए किसानों को वित्तीय सहायता।',
        imageURL:
            'https://fastjobsearchers.in/wp-content/uploads/2023/05/SSC-CHSL-102.jpg',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility:
            'उन किसानों जो मध्य प्रदेश के निवासी हैं और कृषि उपकरण और मशीनरी की खरीद का समर्थन करने वाले मान्य दस्तावेज़ हैं।'),
    Subsidy(
        name:
            'प्राकृतिक आपदाओं से प्रभावित किसानों को सहायता और मार्गदर्शन प्रदान करने वाले सहायता केंद्र।',
        description:
            'व्यापार और भंडारण को सुविधाजनक बनाने के लिए कृषि बाजार और ढांचा स्थापित करने के लिए सब्सिडी।',
        imageURL: 'https://www.upkrishivipran.in/images/agricoop.jpg',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility:
            'कृषि बाजार और कोल्ड स्टोरेज सुविधाओं जैसे कृषि बाजार और ढांचा स्थापित करने वाले व्यक्तियों या संगठनों।'),
    Subsidy(
        name:
            'आपदाओं के कारण होने वाली फसल की हानि के खिलाफ किसानों को वित्तीय सुरक्षा प्रदान करने वाली फसल बीमा योजना।',
        description:
            'किसानों को मृदा स्वास्थ्य कार्ड प्रदान करने वाली योजना, जो मृदा प्रबंधन पर सूचित निर्णय करने में सहायक है।',
        imageURL:
            'https://www.godigit.com/content/dam/godigit/directportal/en/contenthm/soil-health-card-scheme.jpg',
        websiteURL: 'www.soilhealth.dac.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'मध्य प्रदेश में सभी किसान।'),
    Subsidy(
        name:
            'किसानों को मृदा स्वास्थ्य कार्ड प्रदान करने वाली योजना, जो मृदा प्रबंधन पर सूचित निर्णय करने में सहायक है।',
        description:
            'आपदाओं के कारण होने पर फसल की हानि के मामले में किसानों को वित्तीय समर्थन प्रदान करने वाली फसल बीमा योजना।',
        imageURL:
            'https://elearn-pmfbykcc.lms.gov.in/WCR/WCRCourseLaunchFolderImages/17155/pmfby%20logo.jpg',
        websiteURL: 'www.pmfby.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'सूचित क्षेत्रों में सूचित फसलों की खेती करने वाले और फसल ऋण का लाभ उठाने वाले सभी किसान।'),
    Subsidy(
        name:
            'कृषि खर्चों, समावेशित उत्पादन, रखरखाव आदि को पूरा करने के लिए किसानों के लिए क्रेडिट सुविधा।',
        description:
            'कृषि खर्चों, उत्पादन, रखरखाव आदि को पूरा करने के लिए किसानों के लिए क्रेडिट सुविधा।',
        imageURL:
            'https://cdn.zeebiz.com/sites/default/files/2023/08/11/255951-news18-bl-zb.jpg',
        websiteURL: 'www.pm-kisan.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'खेती के मालिकाना हिस्सेदार किसान, बैंकों से फसल ऋण लेने और संतोषजनक ब्याज वसूली का रिकॉर्ड रखने वाले किसान।'),
    Subsidy(
        name:
            'प्रौद्योगिकी बदलाव के माध्यम से कृषि उत्पादकता और सतत विकास को बढ़ावा देने वाली योजना।',
        description:
            'जैसे कि जैविक खेती और जल प्रबंधन जैसी सतत कृषि अभ्यासों को बढ़ावा देने वाली योजना।',
        imageURL:
            'https://media.9curry.com/uploads/organization/image/3606/nmsa-logo.png',
        websiteURL: 'www.nmsa.dac.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'किसान, किसान उत्पादक संगठन (एफपीओ), और कृषि में शामिल अन्य हितधारक।'),
    Subsidy(
        name:
            'व्यापार और भंडारण को सुविधाजनक बनाने के लिए कृषि बाजार और बुनियादी ढांचे के लिए सब्सिडी।',
        description:
            'कृषि ऋणों पर ब्याज सब्सिडी प्रदान करने वाली योजना, ब्याज के भुगतान की बोझ को कम करती है।',
        imageURL:
            'https://www.federalbank.co.in/documents/10180/26262230/Agricultural+Marketing+Infrastructure+%28AMI%29+Scheme+%281%29.jpg/',
        websiteURL: 'www.agricoop.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'फसल उत्पादन के उद्देश्य से बैंकों से छोटे-से-छोटे फसल ऋण का लाभ उठाने वाले किसान।'),
    Subsidy(
        name: 'राष्ट्रीय कृषि विकास योजना',
        description:
            'विभिन्न हस्तक्षेपों के माध्यम से उत्पादकता बढ़ाने का लक्ष्य रखने वाली कृषि विकास योजना।',
        imageURL:
            'https://www.gstsuvidhakendra.org/hindi/wp-content/uploads/2022/01/%E0%A4%B0%E0%A4%BE%E0%A4%B7%E0%A5%8D%E0%A4%9F%E0%A5%8D%E0%A4%B0%E0%A5%80%E0%A4%AF-%E0%A4%95%E0%A5%83%E0%A4%B7%E0%A4%BF-%E0%A4%B5%E0%A4%BF%E0%A4%95%E0%A4%BE%E0%A4%B8-%E0%A4%AF%E0%A5%8B%E0%A4%9C%E0%A4%A8%E0%A4%BE.jpg',
        websiteURL: 'www.agricoop.gov.in',
        location: 'Madhya Pradesh',
        eligibility:
            'सभी किसान, किसान उत्पादक संगठन (एफपीओ), और कृषि में शामिल अन्य हितधारक।'),
  ];
  static final List<Subsidy> apSubsidies = [
    Subsidy(
        name: 'Rythu Bharosa Scheme',
        description:
            'Financial assistance to farmers to support agricultural investment and ensure a stable income.',
        imageURL:
            'https://govtschemes.in/sites/default/files/styles/max_width_500px/public/2022-08/YSR%20Rythu%20Bharosa%20Scheme%20Logo.jpg?itok=DS_QX-hZ',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            'Small and marginal farmers holding land up to 5 acres, tenant farmers, and agricultural laborers.'),
    Subsidy(
        name: 'Zero Interest Crop Loan Scheme',
        description:
            'Scheme providing crop loans at zero percent interest to farmers to alleviate their financial burden.',
        imageURL: 'nan',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            'Small and marginal farmers with landholdings up to 5 acres.'),
    Subsidy(
        name: 'Free Borewell Scheme',
        description:
            'Government assistance for the installation of borewells to provide irrigation facilities to farmers.',
        imageURL:
            'https://govtschemes.in/sites/default/files/styles/max_width_500px/public/2022-12/YSR%20Jala%20Kala%20Scheme%20Logo.jpg?itok=AGHBIgFe',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'Small and marginal farmers who are landowners.'),
    Subsidy(
        name: 'YSR Raithu Bharosa - PM Kisan',
        description:
            'Financial assistance to farmers under the PM Kisan scheme, providing direct income support.',
        imageURL: 'nan',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers registered under the PM Kisan Samman Nidhi Yojana.'),
    Subsidy(
        name: 'YSR Free Crop Insurance Scheme',
        description:
            'Crop insurance scheme providing financial protection to farmers against crop loss due to calamities.',
        imageURL:
            'https://sukanyasamriddhiaccountyojana.in/wp-content/uploads/2019/08/YSR-Crop-Insurance-Scheme.jpg',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            'Farmers availing crop loans from cooperative institutions.'),
    Subsidy(
        name: 'YSR Sunna Vaddi Scheme',
        description:
            'Interest-free loans to women SHGs to encourage entrepreneurship and self-reliance.',
        imageURL: 'https://studybizz.com/images/sunnavaddischeme.jpeg',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'Self-help groups (SHGs) and DWCRA women.'),
    Subsidy(
        name: 'YSR Free Power Scheme',
        description:
            'Free electricity supply to agriculture pumpsets for agricultural purposes.',
        imageURL: 'nan',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers owning agricultural lands.'),
  ];
  static final List<Subsidy> apSubsidiesHindi = [
    Subsidy(
        name: 'रायतु भरोसा योजना',
        description:
            'कृषि निवेश का समर्थन करने और स्थिर आय सुनिश्चित करने के लिए किसानों को वित्तीय सहायता।',
        imageURL:
            'https://govtschemes.in/sites/default/files/styles/max_width_500px/public/2022-08/YSR%20Rythu%20Bharosa%20Scheme%20Logo.jpg?itok=DS_QX-hZ',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility:
            '5 एकड़ तक भूमि होने वाले छोटे और सीमांत किसान, किरायेदार किसान, और कृषि श्रमिक।'),
    Subsidy(
        name: 'शून्य ब्याज फसल ऋण योजना',
        description:
            'किसानों को फाइनेंशियल बोझ को कम करने के लिए शून्य प्रतिशत ब्याज पर फसल ऋण प्रदान करने वाली योजना।',
        imageURL: 'nan',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: '5 एकड़ तक भूमि होने वाले छोटे और सीमांत किसान।'),
    Subsidy(
        name: 'मुफ्त बोरवेल योजना',
        description:
            'किसानों को सिंचाई सुविधा प्रदान करने के लिए बोरवेल की स्थापना के लिए सरकारी सहायता।',
        imageURL:
            'https://govtschemes.in/sites/default/files/styles/max_width_500px/public/2022-12/YSR%20Jala%20Kala%20Scheme%20Logo.jpg?itok=AGHBIgFe',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'भूमि के मालिक छोटे और सीमांत किसान।'),
    Subsidy(
        name: 'वाईएसआर रायतु भरोसा - पीएम किसान',
        description:
            'पीएम किसान योजना के तहत किसानों को सीधी आय सहायता प्रदान करने के लिए वित्तीय सहायता।',
        imageURL: 'nan',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'पीएम किसान सम्मान निधि योजना के तहत पंजीकृत किसान।'),
    Subsidy(
        name: 'वाईएसआर मुफ्त फसल बीमा योजना',
        description:
            'आपदाओं के कारण होने वाली फसल की हानि के खिलाफ किसानों को वित्तीय सुरक्षा प्रदान करने वाली फसल बीमा योजना।',
        imageURL:
            'https://sukanyasamriddhiaccountyojana.in/wp-content/uploads/2019/08/YSR-Crop-Insurance-Scheme.jpg',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'सहकारी संस्थाओं से फसल ऋण प्राप्त करने वाले किसान।'),
    Subsidy(
        name: 'वाईएसआर सुन्ना वाड्डी योजना',
        description:
            'उद्यमिता और आत्मनिर्भरता को प्रोत्साहित करने के लिए महिला एसएचजीज को ब्याज रहित ऋण।',
        imageURL: 'https://studybizz.com/images/sunnavaddischeme.jpeg',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'स्व-सहायता समूह (एसएचजी) और डब्ल्यूसीआरए महिलाएं।'),
    Subsidy(
        name: 'वाईएसआर मुफ्त विद्युत योजना',
        description:
            'कृषि के उद्देश्यों के लिए कृषि पंपसेट्स के लिए मुफ्त बिजली आपूर्ति।',
        imageURL: 'nan',
        websiteURL: 'https://www.apagrisnet.gov.in/',
        location: 'Madhya Pradesh',
        eligibility: 'कृषि भूमि मालिक किसान।'),
  ];
  static final List<Subsidy> maharashtraSubsidies = [
    Subsidy(
        name: 'Maharashtra State Agricultural Marketing Board',
        description: 'marketing infrastructure.',
        imageURL: 'https://slideplayer.com/6278496/21/images/slide_1.jpg',
        websiteURL: 'mahapariksha.gov.in/msamb',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers, Market Committees'),
    Subsidy(
        name: 'Chief Minister\'s Agriculture Solar Feeder Scheme',
        description:
            'Installation of solar-powered agricultural feeders for uninterrupted power supply in rural agriculture.',
        imageURL:
            'https://www.digitalindiagov.in/wp-content/uploads/2023/11/image-7.jpg',
        websiteURL: 'mahaurja.com',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers in rural areas'),
    Subsidy(
        name: 'Mahatma Jyotirao Phule Shetkari Karjmukti Yojana',
        description:
            'Waives off agricultural loans to relieve farmers from debt burden.',
        imageURL:
            'https://www.sarkariyojanadiary.com/wp-content/uploads/2023/05/Mhatma-Jyotiba-Fule-Karj-Mukti-Yojana-2023-Sarkari-Yojana-Diary.png',
        websiteURL: 'mahatmaphulekarjmuktiyojana.com',
        location: 'Madhya Pradesh',
        eligibility: 'Small and marginal farmers'),
    Subsidy(
        name: 'Mahatma Phule Farmer Interest Waiver Scheme',
        description:
            'Waives off interest on agricultural loans for eligible farmers.',
        imageURL: 'nan',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility: 'nan'),
    Subsidy(
        name: 'Soil Health Card Scheme',
        description:
            'Provides soil health cards containing soil information and recommendations for soil fertility improvement.',
        imageURL: 'nan',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility: 'Eligible farmers'),
    Subsidy(
        name: 'Pradhan Mantri Fasal Bima Yojana',
        description:
            'Offers crop insurance against crop loss due to natural calamities, pests, or diseases.',
        imageURL:
            'https://www.modiyojana.com/wp-content/uploads/2018/12/Soil-Health-card.jpg',
        websiteURL: 'soilhealth.dac.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers'),
    Subsidy(
        name: 'Integrated Pest Management (IPM) Scheme',
        description:
            'Promotes integrated pest management techniques to reduce chemical pesticide use.',
        imageURL:
            'https://images.ctfassets.net/uwf0n1j71a7j/7BOkRtAHBD7LVHEbI36jyz/079537817625b8f9647ee7da26e2b6a4/pmfby-pradhan-mantri-fasal-bima-yojana.png',
        websiteURL: 'pmfby.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers'),
    Subsidy(
        name: 'Subsidies on Agricultural Inputs',
        description:
            'Provides subsidies on seeds, fertilizers, pesticides, and machinery to make them more affordable for farmers.',
        imageURL: 'nan',
        websiteURL: 'agricoop.nic.in',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers'),
    Subsidy(
        name: 'Drip Irrigation Subsidy Scheme',
        description:
            'Offers subsidies on drip irrigation systems to encourage water-efficient irrigation practices.',
        imageURL:
            'https://img.etimg.com/photo/msid-74485485,imgsize-72521/graph.jpg',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers'),
    Subsidy(
        name: 'Drip Irrigation Subsidy Scheme',
        description:
            'Offers subsidies on drip irrigation systems to encourage water-efficient irrigation practices.',
        imageURL:
            'https://kjcdn.gumlet.io/media/44554/micro-irrigation-scheme.jpg',
        websiteURL: 'mahaagri.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'Farmers'),
  ];
  static final List<Subsidy> maharashtraSubsidiesHindi = [
    Subsidy(
        name: 'महाराष्ट्र राज्य कृषि विपणन मंडळ',
        description:
            'कृषि विपणन बुनियादी ढांचे को बढ़ावा देने के लिए योजनाएं कार्यान्वित करता है।',
        imageURL: 'https://slideplayer.com/6278496/21/images/slide_1.jpg',
        websiteURL: 'mahapariksha.gov.in/msamb',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'मुख्यमंत्री कृषि सौर फीडर योजना',
        description:
            'ग्रामीण कृषि में अविराम बिजली आपूर्ति के लिए सोलर पावर युक्त कृषि फीडर की स्थापना।',
        imageURL:
            'https://www.digitalindiagov.in/wp-content/uploads/2023/11/image-7.jpg',
        websiteURL: 'mahaurja.com',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'महात्मा ज्योतिराव फुले शेतकरी कर्जमुक्ति योजना',
        description:
            'कृषि ऋण माफ़ करके किसानों को ऋण बोझ से राहत प्रदान करता है।',
        imageURL:
            'https://www.sarkariyojanadiary.com/wp-content/uploads/2023/05/Mhatma-Jyotiba-Fule-Karj-Mukti-Yojana-2023-Sarkari-Yojana-Diary.png',
        websiteURL: 'mahatmaphulekarjmuktiyojana.com',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'महात्मा फुले किसान ब्याज माफ़ी योजना',
        description: 'पात्र किसानों के लिए कृषि ऋण पर ब्याज माफ़ करता है।',
        imageURL: 'nan',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'मृदा स्वास्थ्य कार्ड योजना',
        description:
            'मृदा स्वास्थ्य कार्ड प्रदान करता है जो मृदा सूचना और मृदा उर्वरक सुधार के लिए सिफारिशों को शामिल करता है।',
        imageURL: 'nan',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'प्रधानमंत्री फसल बीमा योजना',
        description:
            'प्राकृतिक आपदाओं, कीटों या रोगों के कारण होने वाली फसल की हानि के खिलाफ फसल बीमा प्रदान करता है।',
        imageURL:
            'https://www.modiyojana.com/wp-content/uploads/2018/12/Soil-Health-card.jpg',
        websiteURL: 'soilhealth.dac.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'समेकित कीट प्रबंधन (आईपीएम) योजना',
        description:
            'एकीकृत कीट प्रबंधन तकनीकों को बढ़ावा देता है ताकि रासायनिक कीटनाशकों का उपयोग कम हो।',
        imageURL:
            'https://images.ctfassets.net/uwf0n1j71a7j/7BOkRtAHBD7LVHEbI36jyz/079537817625b8f9647ee7da26e2b6a4/pmfby-pradhan-mantri-fasal-bima-yojana.png',
        websiteURL: 'pmfby.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'कृषि इनपुट्स पर सब्सिडी',
        description:
            'बीज, उर्वरक, कीटनाशक, और मशीनरी पर सब्सिडी प्रदान करता है ताकि ये किसानों के लिए सस्ते हों।',
        imageURL: 'nan',
        websiteURL: 'agricoop.nic.in',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'टिप्पण इरिगेशन सब्सिडी योजना',
        description:
            'ड्रिप इरिगेशन प्रणालियों पर सब्सिडी प्रदान करता है ताकि पानी की दक्षिणा और उपयुक्त इरिगेशन अभ्यासों को प्रोत्साहित किया जा सके।',
        imageURL:
            'https://img.etimg.com/photo/msid-74485485,imgsize-72521/graph.jpg',
        websiteURL: '',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
    Subsidy(
        name: 'nan',
        description: 'nan',
        imageURL:
            'https://kjcdn.gumlet.io/media/44554/micro-irrigation-scheme.jpg',
        websiteURL: 'mahaagri.gov.in',
        location: 'Madhya Pradesh',
        eligibility: 'किसान'),
  ];
}

class Subsidy {
  String name;
  String description;
  String location;
  String imageURL;
  String websiteURL;
  String eligibility;
  Subsidy({
    required this.name,
    required this.description,
    required this.location,
    required this.imageURL,
    required this.websiteURL,
    required this.eligibility,
  });

  Subsidy copyWith({
    String? name,
    String? description,
    String? location,
    String? imageURL,
    String? websiteURL,
    String? eligibility,
  }) {
    return Subsidy(
      name: name ?? this.name,
      description: description ?? this.description,
      location: location ?? this.location,
      imageURL: imageURL ?? this.imageURL,
      websiteURL: websiteURL ?? this.websiteURL,
      eligibility: eligibility ?? this.eligibility,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'location': location,
      'imageURL': imageURL,
      'websiteURL': websiteURL,
      'eligibility': eligibility,
    };
  }

  factory Subsidy.fromMap(Map<String, dynamic> map) {
    return Subsidy(
      name: map['name'] as String,
      description: map['description'] as String,
      location: map['location'] as String,
      imageURL: map['imageURL'] as String,
      websiteURL: map['websiteURL'] as String,
      eligibility: map['eligibility'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Subsidy.fromJson(String source) =>
      Subsidy.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Subsidy(name: $name, description: $description, location: $location, imageURL: $imageURL, websiteURL: $websiteURL, eligibility: $eligibility)';
  }

  @override
  bool operator ==(covariant Subsidy other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.description == description &&
        other.location == location &&
        other.imageURL == imageURL &&
        other.websiteURL == websiteURL &&
        other.eligibility == eligibility;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        location.hashCode ^
        imageURL.hashCode ^
        websiteURL.hashCode ^
        eligibility.hashCode;
  }
}

class Disease {
  String disease;
  String plant;
  String remedy;
  Disease({
    required this.disease,
    required this.plant,
    required this.remedy,
  });

  Disease copyWith({
    String? disease,
    String? plant,
    String? remedy,
  }) {
    return Disease(
      disease: disease ?? this.disease,
      plant: plant ?? this.plant,
      remedy: remedy ?? this.remedy,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disease': disease,
      'plant': plant,
      'remedy': remedy,
    };
  }

  factory Disease.fromMap(Map<String, dynamic> map) {
    return Disease(
      disease: map['disease'] as String,
      plant: map['plant'] as String,
      remedy: map['remedy'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Disease.fromJson(String source) =>
      Disease.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Disease(disease: $disease, plant: $plant, remedy: $remedy)';

  @override
  bool operator ==(covariant Disease other) {
    if (identical(this, other)) return true;

    return other.disease == disease &&
        other.plant == plant &&
        other.remedy == remedy;
  }

  @override
  int get hashCode => disease.hashCode ^ plant.hashCode ^ remedy.hashCode;
}
