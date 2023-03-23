import 'package:flutter/material.dart';
import 'package:flutter_handyman/applicant%20panel/jobs/search/home/utilities/colors.dart';
import 'package:flutter_handyman/applicant%20panel/jobs/search/home/utilities/icon%20widgets/values/icon.dart';


List<Icon> GetIcons() {
  return const [
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: purple,
    ),
    Icon(
      IconData(constructionIcon, fontFamily: 'MaterialIcons'),
      color: purple,
    ),
    Icon(
      IconData(carpenterIcon, fontFamily: 'MaterialIcons'),
      color: pink,
    ),
    Icon(
      IconData(plumberIcon, fontFamily: 'MaterialIcons'),
      color: green,
    ),
    Icon(
      IconData(hammerIcon, fontFamily: 'MaterialIcons'),
      color: yellow,
    ),
    Icon(
      IconData(electricalIcon, fontFamily: 'MaterialIcons'),
      color: deepPink,
    ),
    Icon(
      IconData(roofingIcon, fontFamily: 'MaterialIcons'),
      color: lightBlue,
    ),
  ];
}
