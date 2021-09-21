import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';
import '../../routes/routes.dart';

typedef PageDetail = Map<String, Object>;

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen();

  final pageController = PageController();

  final List<PageDetail> pages = [
    {
      'text': 'Choose Product',
      'image': 'asset/images/core/onboard_one.svg',
      'desc': 'A product is the item offered for sale. '
          'A product can be a service or an item. It can be '
          'physical or in virtual or cyber form'
    },
    {
      'text': 'Make Payment',
      'image': 'asset/images/core/onboard_two.svg',
      'desc': 'Payment is the transfer of money '
          'services in exchange product '
          'or Payments typically made terms agreed',
    },
    {
      'text': 'Get Your Order',
      'image': 'asset/images/core/onboard_three.svg',
      'desc': 'Business or commerce an order is a stated '
          'intention either spoken to engage'
          ' in a commercial transaction specific products '
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: pages.length,
          controller: pageController,
          itemBuilder: (_, int index) =>
              PageScaffold(pages[index], pageController, index),
        ),
      ),
    );
  }
}

class PageScaffold extends StatelessWidget {
  const PageScaffold(
    this.pageDetail,
    this.pageController,
    this.index,
  );

  final PageDetail pageDetail;
  final PageController pageController;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kPagePadding,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '${index + 1}',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  '/3',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: kLightTextColorGrey,
                      ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(RouteGenerator.login);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 0.7.sw,
              child: SvgPicture.asset(
                pageDetail['image'] as String,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              pageDetail['text'] as String,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              pageDetail['desc'] as String,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: kLightTextColorGrey,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  if (index == 2) {
                    Navigator.of(context)
                        .pushReplacementNamed(RouteGenerator.login);
                  } else {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      index == 2 ? 'GetStarted' : 'Next',
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    index == 0
                        ? SvgPicture.asset(
                            'asset/images/core/next_white.svg',
                            width: 8.w,
                            color: Colors.white,
                          )
                        : SvgPicture.asset(
                            'asset/images/core/next.svg',
                            width: 8.w,
                            color:
                                index > 0 ? Colors.white : Colors.transparent,
                          ),
                    if (index > 0)
                      index == 1
                          ? SvgPicture.asset(
                              'asset/images/core/next_white.svg',
                              width: 8.w,
                              color: Colors.white,
                            )
                          : SvgPicture.asset(
                              'asset/images/core/next.svg',
                              width: 8.w,
                              color:
                                  index > 1 ? Colors.white : Colors.transparent,
                            ),
                    if (index > 1)
                      index == 2
                          ? SvgPicture.asset(
                              'asset/images/core/next_white.svg',
                              width: 8.w,
                              color: Colors.white,
                            )
                          : SvgPicture.asset(
                              'asset/images/core/next.svg',
                              width: 8.w,
                              color:
                                  index > 2 ? Colors.white : Colors.transparent,
                            ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
