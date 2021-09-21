import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';
import '../widget/custom_switch.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen();

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool notification = true;
  bool update = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPagePadding,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 32.w,
                  ),
                  const Spacer(),
                  Text(
                    'Settings',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 32.w,
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                      color: kLightAccent,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'asset/images/setting/email.svg',
                        width: 24.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: Text(
                      'Email Support',
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.sp,
                    color: kLightTextColorGrey,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                      color: kLightAccent,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'asset/images/setting/faq.svg',
                        width: 24.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: Text(
                      'FAQ',
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.sp,
                    color: kLightTextColorGrey,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                      color: kLightAccent,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'asset/images/setting/privacy.svg',
                        width: 24.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: Text(
                      'Privacy Statement',
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.sp,
                    color: kLightTextColorGrey,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                      color: kLightAccent,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'asset/images/setting/noti.svg',
                        width: 24.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: Text(
                      'Notification',
                    ),
                  ),
                  CustomSwitch(
                      value: notification,
                      onChanged: (val) {
                        setState(() {
                          notification = val;
                        });
                      })
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                      color: kLightAccent,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'asset/images/setting/update.svg',
                        width: 24.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: Text(
                      'Update',
                    ),
                  ),
                  CustomSwitch(
                      value: update,
                      onChanged: (val) {
                        setState(() {
                          update = val;
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
