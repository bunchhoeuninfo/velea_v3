import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velea_v3/constants/app_constant.dart';
import 'package:velea_v3/widgets/home_web.dart';


void main() => runApp(VeleaApp());

class VeleaApp extends StatefulWidget {

  const VeleaApp({
    super.key,
  });

  @override
  State<VeleaApp> createState() => _VeleaAppState();

}

class _VeleaAppState extends State<VeleaApp> {

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: AppConstant.white,
        systemNavigationBarColor: AppConstant.white,
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppConstant.blue,
        useMaterial3: true,
        fontFamily: 'Inter',
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            letterSpacing: kIsWeb || Platform.isAndroid ? 0.2 : 0.12,
          ),
        ),

        
        typography: Typography.material2021(platform: defaultTargetPlatform),
        scaffoldBackgroundColor: AppConstant.white,
        indicatorColor: Colors.transparent,
        
      ),
      home: Home(),
    );
  }

}
