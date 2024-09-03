import 'package:ai_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // api key generate : https://aistudio.google.com/app/apikey
  Gemini.init(apiKey: 'AIzaSyA9jJurqUNRxCHmQs1IugMUaK1VJNDD1I0');
  runApp(const MyApp());
}

// ** package add **
// 1) get ,
// 2) flutter_gemini: ^2.0.5 ,
// 3) dash_chat_2: ^0.0.21

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

//  AI API - API KEY - 'YELLOW FLOWER'
// GEMINI - FREEMIUM






