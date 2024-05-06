import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'app_element/global_variable.dart';
import 'page/my_bottombar.dart';


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
          bgColor = Theme.of(context).backgroundColor;
          fontColor = Theme.of(context).textTheme.titleLarge!.color;
          bodyLarge = Theme.of(context).textTheme.bodyLarge;
          bodyMedium = Theme.of(context).textTheme.bodyMedium;
          bodySmall = Theme.of(context).textTheme.bodySmall;
          titleLarge = Theme.of(context).textTheme.titleLarge;
          titleMedium = Theme.of(context).textTheme.titleMedium;
          titleSmall = Theme.of(context).textTheme.titleSmall;
          return MaterialApp(
            home: MyBottom(),
          );
        },
      );
  }
}
