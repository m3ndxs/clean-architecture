import 'package:core_components/tokens/colors.dart';
import 'package:flutter/material.dart';

class AppTypography {
  static const String fontFamilyBody = 'Inter';
  static const String fontFamilyHeading = 'Genos';

  static const TextStyle _baseBody = TextStyle(
    fontFamily: fontFamilyBody,
    color: AppColors.neutralText,
    height: 1.2,
  );

  static const TextStyle _baseHeading = TextStyle(
    fontFamily: fontFamilyHeading,
    color: AppColors.neutralText,
    height: 1.25,
  );

  static TextStyle fontBodyXXL = _baseBody.copyWith(
    fontSize: 31,
    fontWeight: FontWeight.w400,
  );
  static TextStyle fontBodyXL = _baseBody.copyWith(
    fontSize: 25,
    fontWeight: FontWeight.w400,
  );
  static TextStyle fontBodyLG = _baseBody.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static TextStyle fontBodyMD = _baseBody.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle fontBodySM = _baseBody.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static TextStyle fontBodyXS = _baseBody.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static TextStyle fontHeadingXXL = _baseHeading.copyWith(
    fontSize: 76,
    fontWeight: FontWeight.w700,
  );
  static TextStyle fontHeadingXL = _baseHeading.copyWith(
    fontSize: 61,
    fontWeight: FontWeight.w700,
  );
  static TextStyle fontHeadingLG = _baseHeading.copyWith(
    fontSize: 49,
    fontWeight: FontWeight.w700,
  );
  static TextStyle fontHeadingMD = _baseHeading.copyWith(
    fontSize: 39,
    fontWeight: FontWeight.w700,
  );
  static TextStyle fontHeadingSM = _baseHeading.copyWith(
    fontSize: 31,
    fontWeight: FontWeight.w700,
  );
  static TextStyle fontHeadingXS = _baseHeading.copyWith(
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );
}
