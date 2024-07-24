import 'package:flutter/material.dart';

class RadioChannel {

  const RadioChannel(
    {
      Key? key,
      required this.chnCountryISO,
      required this.chnCode,
      required this.chnDescr,
      required this.chnFullName,
      required this.chnImgUrl,
      required this.chnIsActive,
      required this.chnShortName,
      required this.chnTitle,
      required this.chnUrl,
    }
  );

  final String chnCountryISO;
  final String chnCode;
  final String chnDescr;
  final String chnFullName;
  final String chnImgUrl;
  final String chnIsActive;
  final String chnShortName;
  final String chnTitle;
  final String chnUrl;

  

}