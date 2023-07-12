import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicComponent {
  Text basicText(String texte) {
    return Text(texte,
        style: const TextStyle(color: Colors.grey), textAlign: TextAlign.start);
  }

  Text basicTextBold(String texte) {
    return Text(texte,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Open Sans'));
  }

  Text basicBigTextBold(String texte) {
    return Text(texte,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.w400,
            fontFamily: 'Oswald'));
  }

  Text basicMediumTextBold(String texte) {
    return Text(texte,
        style: TextStyle(
            color: Colors.black,
            fontSize: 24.sp,
            height: 24.sp / 24.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Oswald'));
  }

  Text basicRegularTextBold(String texte) {
    return Text(texte,
        style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Oswald'));
  }

  Text basicInfoText(String texte) {
    return Text(texte,
        style: const TextStyle(
            color: Colors.deepOrange,
            fontSize: 14,
            fontWeight: FontWeight.w100,
            fontFamily: 'Oswald'));
  }

  Text basicInfoTextGrey(String texte) {
    return Text(texte,
        style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w100,
            fontFamily: 'Oswald'));
  }

  Text basicInfoTextGreen(String texte) {
    return Text(texte,
        style: const TextStyle(
            color: Color(0xFF25E17B),
            fontSize: 14,
            fontWeight: FontWeight.w100,
            fontFamily: 'Oswald'));
  }

  Text basicInfoTextWhite(String texte) {
    return Text(texte,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            fontFamily: 'Oswald'));
  }

  Text basicTextBoldWhite(String texte) {
    return Text(texte,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Oswald'));
  }
}
