import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        value == false ? onChanged(true) : onChanged(false);
      },
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            child: Center(
              child: AnimatedContainer(
                duration: kAnimationDuration,
                curve: kAnimationCurve,
                width: 52.0.w,
                height: 30.0.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0.r),
                    color: value
                        ? Theme.of(context).colorScheme.primary
                        : kLightTextColorGrey.withOpacity(0.2)),
              ),
            ),
          ),
          SizedBox(
            width: 52.0.w,
            height: 32.0.h,
            child: AnimatedAlign(
              duration: kAnimationDuration,
              curve: kAnimationCurve,
              alignment: value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 32.0.w,
                height: 32.0.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kLightPrimary,
                    width: 1.5.sp,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kLightTextColorGrey.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 10,
                    )
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
