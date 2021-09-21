import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen();

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  late final CarouselController buttonCarouselController;
  int currentIndex = 1;

  @override
  void initState() {
    super.initState();
    buttonCarouselController = CarouselController();
  }

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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 24.sp,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'My Wallets',
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
                        height: 32.h,
                      ),
                      CarouselSlider(
                          carouselController: buttonCarouselController,
                          options: CarouselOptions(
                              initialPage: currentIndex,
                              enlargeCenterPage: true,
                              viewportFraction: 0.8,
                              aspectRatio: 2,
                              onPageChanged: (index, _) {
                                setState(() {
                                  currentIndex = index;
                                });
                              }),
                          items: List.generate(3, (index) {
                            if (index == 1) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 12.w,
                                      right: 12.w,
                                    ),
                                    child: const _CreditCard(null),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      width: 32.w,
                                      height: 32.w,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF39CE8A),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2.sp,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                            if (index == 0) {
                              return const _CreditCard(
                                Color(0xFFC320D9),
                              );
                            }
                            return const _CreditCard(
                              Color(0xFFFF3281),
                            );
                          })),
                      SizedBox(
                        height: 24.h,
                      ),
                      SizedBox(
                        height: 32.h,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            3,
                            (index) => Row(
                              children: [
                                Row(
                                  children: [
                                    AnimatedContainer(
                                      duration: kAnimationDuration,
                                      curve: kAnimationCurve,
                                      width: index == currentIndex ? 12.w : 8.w,
                                      height:
                                          index == currentIndex ? 12.w : 8.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index == currentIndex
                                            ? kLightPrimary
                                            : const Color(0x26F67952),
                                      ),
                                    ),
                                    if (index < 2)
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Recent Transactions',
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
                      ...List.generate(
                        10,
                        (index) => const _TransactionCard(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CreditCard extends StatelessWidget {
  const _CreditCard(this.color);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.8.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        color: kLightAccent,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        child: Stack(
          children: [
            Positioned(
              top: -40.h,
              right: -60.w,
              child: Container(
                width: 180.w,
                height: 180.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: color == null
                          ? [
                              const Color(0xFFF67952),
                              const Color(0xFFC320D9),
                            ]
                          : [color!, color!],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: 10.h,
              left: 20.w,
              child: Container(
                width: 120.w,
                height: 120.w,
                decoration: BoxDecoration(
                  color: color ?? const Color(0xFFFF4F17),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -60.h,
              left: 20.w,
              child: Container(
                width: 80.w,
                height: 80.w,
                decoration: BoxDecoration(
                  color: color ?? const Color(0xFFF53F3F),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                16.r,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 40,
                  sigmaY: 40,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Platinum Card',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'asset/images/profile/visa.svg',
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'asset/images/profile/chip.svg',
                        width: 32.sp,
                      ),
                      const Spacer(),
                      Text(
                        '123 579 4685',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            'Valid  ',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          Text(
                            '20/09/2023',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          const Spacer(),
                          Text(
                            'Thomas',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TransactionCard extends StatelessWidget {
  const _TransactionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(
            8.w,
          ),
          decoration: BoxDecoration(
            borderRadius: kCardBorderRadius,
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: kCardBorderRadius,
                  color: const Color(0x2087C7B9),
                ),
                width: 80.w,
                height: 64.w,
                child: Image.asset(
                  'asset/images/home/png/shirt_teal.png',
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Casual Shirts',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      '23 Mar\'2021',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: kLightTextColorGrey,
                          ),
                    ),
                  ],
                ),
              ),
              Text(
                '\$250',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        )
      ],
    );
  }
}
