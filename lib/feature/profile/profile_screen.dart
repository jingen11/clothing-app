import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'asset/images/profile/bg.svg',
            width: 1.sw,
          ),
          SafeArea(
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
                        'Profile',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 32.w,
                        child: Icon(
                          Icons.more_vert_rounded,
                          size: 24.sp,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 64.h,
                          ),
                          ClipOval(
                            child: SizedBox(
                              width: 120.w,
                              child: Image.asset(
                                'asset/images/home/png/profile.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            'Alex Nikiforov',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'alex@msn.com',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: kLightTextColorGrey,
                                    ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: _ProfileCard(
                                  'asset/images/profile/bag.svg',
                                  '10+',
                                  'Progress order',
                                  const Color(0xFFF67952).withOpacity(0.1),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Expanded(
                                child: _ProfileCard(
                                  'asset/images/profile/ticket.svg',
                                  '5',
                                  'Promocodes',
                                  const Color(0xFF0EA2F6).withOpacity(0.1),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Expanded(
                                child: _ProfileCard(
                                  'asset/images/profile/star.svg',
                                  '4.5K',
                                  'Reviews',
                                  const Color(0xFFFFC107).withOpacity(0.1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Personal Information',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Container(
                            padding: EdgeInsets.all(
                              8.w,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: kCardBorderRadius,
                              border: Border.all(
                                color: Colors.grey[400]!,
                                width: 0.5.sp,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Name: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            color: kLightTextColorGrey,
                                          ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Chris Harison',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Email: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            color: kLightTextColorGrey,
                                          ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'chris@gmail.com',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Location: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            color: kLightTextColorGrey,
                                          ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'San Diego',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Zip Code: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            color: kLightTextColorGrey,
                                          ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '1200',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phome Number: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            color: kLightTextColorGrey,
                                          ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '(+1)5484 4757 84',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard(
    this.icon,
    this.desc,
    this.title,
    this.color,
  );

  final Color color;
  final String title;
  final String desc;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        borderRadius: kCardBorderRadius,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kLightTextColorGrey.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                icon,
                width: 24.w,
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: kLightTextColorGrey,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            desc,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
