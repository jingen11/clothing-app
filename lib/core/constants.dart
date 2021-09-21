import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kLightPrimary = Color(0xFFF67952);
const Color kLightAccent = Color(0xFFFFE9E2);
const Color kLightTextColor = Colors.black;
const Color kLightPlaceholder = Color(0xFFFFFFFF);
const Color kLightPlaceholderText = Color(0xFF000000);
const Color kLightTextColorGrey = Color(0x88000000);
const Color kLightBg = Color(0xFFF0F0F0);
const Color kLightError = Color(0xFFFF7971);

const Duration kAnimationDuration = Duration(milliseconds: 300);
const Curve kAnimationCurve = Curves.easeInOut;

EdgeInsets kPagePadding = EdgeInsets.symmetric(
  horizontal: 16.w,
);

EdgeInsets kCardPadding = EdgeInsets.symmetric(
  horizontal: 16.w,
  vertical: 16.h,
);

EdgeInsets kInputFieldPadding = EdgeInsets.symmetric(
  horizontal: 16.w,
  vertical: 16.h,
);

BorderRadiusGeometry kCardBorderRadius = BorderRadius.circular(
  8.r,
);

BorderRadius kAppIconBorderRadius = BorderRadius.circular(
  8.r,
);

BorderRadiusGeometry kBottomSheetBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(16.r),
  topRight: Radius.circular(16.r),
);
