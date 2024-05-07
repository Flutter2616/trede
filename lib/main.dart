import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/provider_class_intialize.dart';
import 'package:moneytomoney/page/dash/dash_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'app_element/global_variable.dart';
import 'page/dash/my_bottombar.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
      return Sizer(
        builder: (context, orientation, deviceType) {
          return MultiProvider(
            providers: providerClass,
            child: MaterialApp(
              home: MyBottom(),
            ),
          );
        },
      );
  }
}
