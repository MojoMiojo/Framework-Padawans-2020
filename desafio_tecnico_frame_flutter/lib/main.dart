import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:desafio_tecnico_frame_flutter/controllers/menu_controller.dart';
import 'package:desafio_tecnico_frame_flutter/screens/home_screen.dart';

void main() {
  runApp(MyApp());

  _myGetItControllers();

}

_myGetItControllers() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton(MenuController());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


