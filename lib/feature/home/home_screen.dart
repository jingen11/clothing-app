import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../core/constants.dart';
import '../../routes/routes.dart';
import 'detail_screen.dart';

typedef CardDetail = Map<String, Object>;

final List<CardDetail> shirts = [
  {
    'name': 'Long Sleeve Shirts',
    'asset': 'shirt_orange',
    'price': '165',
    'color': const Color(0xFFFFFAF6),
  },
  {
    'name': 'Casual Henly Shirts',
    'asset': 'tshirt_black',
    'price': '175',
    'color': const Color(0xFFEFEFF2),
  },
  {
    'name': 'Curved Hem Shirts',
    'asset': 'shirt_green',
    'price': '100',
    'color': const Color(0xFFEDFDF4),
  },
  {
    'name': 'Casual Nolin',
    'asset': 'tshirt_green',
    'price': '100',
    'color': const Color(0x2640442B),
  },
  {
    'name': 'Curved Hem Shirts',
    'asset': 'shirt_beach',
    'price': '100',
    'color': const Color(0x1FFEF171),
  },
  {
    'name': 'Casual Nolin',
    'asset': 'shirt_teal',
    'price': '165',
    'color': const Color(0x47C3F9F1),
  },
  {
    'name': 'Curved Hem Shirts',
    'asset': 'shirt_beach',
    'price': '100',
    'color': const Color(0x1FFEF171),
  },
  {
    'name': 'Casual Nolin',
    'asset': 'shirt_teal',
    'price': '165',
    'color': const Color(0x47C3F9F1),
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.controller,
    required this.scaffoldColor,
    required this.callback,
  });

  final ZoomDrawerController controller;
  final void Function() callback;
  final Color scaffoldColor;

  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
        controller: controller,
        callback: callback,
        scaffoldColor: scaffoldColor);
  }
}

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({
    required this.controller,
    required this.scaffoldColor,
    required this.callback,
  });

  final ZoomDrawerController controller;
  final void Function() callback;
  final Color scaffoldColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: kPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 32.w,
                    child: GestureDetector(
                      onTap: () {
                        controller.open!();
                        callback();
                      },
                      child: SvgPicture.asset(
                        'asset/images/home/svg/menu.svg',
                        width: 24.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'asset/images/home/svg/location.svg',
                        ),
                        Text(
                          '15/2 New Texas',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                    child: SvgPicture.asset(
                      'asset/images/home/svg/noti.svg',
                      width: 24.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Explore',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'best Outfits for you',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: kLightTextColorGrey,
                    ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Stack(
                children: [
                  TextField(
                    style: const TextStyle(color: Colors.black),
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteGenerator.search);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search Items...',
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16.h,
                        horizontal: 32.w,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 8.w,
                    child: SvgPicture.asset(
                      'asset/images/home/svg/search.svg',
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 8.w,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: kBottomSheetBorderRadius,
                              ),
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: kCardPadding,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Clear',
                                          ),
                                          Text(
                                            'Filters',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: kLightTextColorGrey
                                                  .withOpacity(0.2),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.clear,
                                              color: Colors.black,
                                              size: 24.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Category',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6!
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 12.h,
                                              horizontal: 4.w,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              color: kLightPrimary,
                                            ),
                                            child: const Text(
                                              'New Arrival',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 12.h,
                                              horizontal: 4.w,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              color: Colors.white,
                                            ),
                                            child: Text(
                                              'Top Trending',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 12.h,
                                              horizontal: 4.w,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              color: Colors.white,
                                            ),
                                            child: Text(
                                              'Featured Products',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Pricing',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text('\$50-\$200',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Stack(
                                        children: [
                                          Slider(
                                            value: 50,
                                            activeColor: Colors.transparent,
                                            inactiveColor: Colors.transparent,
                                            thumbColor: Colors.transparent,
                                            onChanged: (val) {},
                                            min: 0,
                                            max: 500,
                                            label: '\$50',
                                          ),
                                          Slider(
                                            value: 200,
                                            activeColor: Colors.transparent,
                                            inactiveColor: Colors.transparent,
                                            thumbColor: Colors.transparent,
                                            onChanged: (val) {},
                                            min: 0,
                                            max: 500,
                                            label: '\$200',
                                          ),
                                          RangeSlider(
                                            values: const RangeValues(50, 200),
                                            labels:
                                                const RangeLabels('50', '200'),
                                            onChanged:
                                                (RangeValues newValues) {},
                                            min: 0,
                                            max: 500,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Distance',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text('500m-2Km',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Stack(
                                        children: [
                                          Slider(
                                            value: 500,
                                            activeColor: Colors.transparent,
                                            inactiveColor: Colors.transparent,
                                            thumbColor: Colors.transparent,
                                            onChanged: (val) {},
                                            min: 0,
                                            max: 3000,
                                            label: '500m',
                                          ),
                                          Slider(
                                            value: 2000,
                                            activeColor: Colors.transparent,
                                            inactiveColor: Colors.transparent,
                                            thumbColor: Colors.transparent,
                                            onChanged: (val) {},
                                            min: 0,
                                            max: 3000,
                                            label: '2Km',
                                          ),
                                          RangeSlider(
                                            values:
                                                const RangeValues(500, 2000),
                                            onChanged:
                                                (RangeValues newValues) {},
                                            min: 0,
                                            max: 3000,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 32.h,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Apply Filter',
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: BoxDecoration(
                            color: kLightPrimary,
                            borderRadius: BorderRadius.circular(
                              8.r,
                            ),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'asset/images/home/svg/filter.svg',
                              width: 24.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 56.w,
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: kCardBorderRadius,
                        border: Border.all(
                          color: kLightTextColor.withOpacity(
                            0.1,
                          ),
                        )),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'asset/images/home/svg/dress.svg',
                          width: 24.w,
                          height: 24.w,
                        ),
                        Text(
                          'Dress',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: kLightTextColorGrey,
                                  ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 56.w,
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: kCardBorderRadius, color: Colors.white),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'asset/images/home/svg/shirt.svg',
                          width: 24.w,
                          height: 24.w,
                        ),
                        Text(
                          'Shirt',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 56.w,
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: kCardBorderRadius,
                        border: Border.all(
                          color: kLightTextColor.withOpacity(
                            0.1,
                          ),
                        )),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'asset/images/home/svg/pant.svg',
                          width: 24.w,
                          height: 24.w,
                        ),
                        Text(
                          'Pants',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: kLightTextColorGrey,
                                  ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 56.w,
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: kCardBorderRadius,
                        border: Border.all(
                          color: kLightTextColor.withOpacity(
                            0.1,
                          ),
                        )),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'asset/images/home/svg/tshirt.svg',
                          width: 24.w,
                          height: 24.w,
                        ),
                        Text(
                          'Tshirt',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: kLightTextColorGrey,
                                  ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'New Arrival',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: kLightTextColorGrey,
                        ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 200.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      shirts.length,
                      (index) => Row(
                        children: [
                          _ArrivalCard(
                            asset: shirts[index]['asset'] as String,
                            name: shirts[index]['name'] as String,
                            price: shirts[index]['price'] as String,
                            color: shirts[index]['color'] as Color,
                          ),
                          SizedBox(
                            width: 8.w,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ArrivalCard extends StatelessWidget {
  const _ArrivalCard({
    required this.asset,
    required this.name,
    required this.price,
    required this.color,
  });

  final String asset;
  final String name;
  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const DetailScreen()));
      },
      child: Container(
        height: 200.h,
        width: 150.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8.r,
          ),
        ),
        padding: EdgeInsets.all(
          8.w,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(
                    16.r,
                  ),
                ),
                child: Image.asset(
                  'asset/images/home/png/$asset.png',
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              name,
            ),
            Text(
              '\$$price',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
