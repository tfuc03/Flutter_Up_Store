import 'package:e_commerce/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  /// Widgets Flutter Binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Flutter Native Splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Portrait Up The Device
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());

}




