
import 'package:flutter/material.dart';
import 'package:valentine/screens/valentine.dart';
import 'package:get/get.dart';


void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'No Gree For Anybody',
      theme: ThemeData().copyWith(
        useMaterial3: true,
//        colorScheme: ColorScheme.fromSeed(
     //       seedColor: Color.fromARGB(255, 255, 255, 255)),
      ),
      home: const ValentineScreen()
    );
  }
}