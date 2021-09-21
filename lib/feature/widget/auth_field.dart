import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    required this.iconName,
    required this.hintText,
  });

  final String iconName;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.background,
            filled: true,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: kLightTextColorGrey,
                ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                8.r,
              ),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                8.r,
              ),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                8.r,
              ),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.only(
              left: 60.w,
              right: 16.w,
              top: 16.h,
              bottom: 16.h,
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 4.w,
          child: Center(
            child: Container(
              width: 48.w,
              height: 45.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.r,
                ),
                color: kLightAccent,
              ),
              child: Center(
                  child: SvgPicture.asset(
                iconName,
                width: 24.w,
              )),
            ),
          ),
        )
      ],
    );
  }
}
