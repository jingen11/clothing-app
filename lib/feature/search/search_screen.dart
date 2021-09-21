import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';

typedef CardDetail = Map<String, Object>;

final List<CardDetail> shirts = [
  {
    'name': 'Long Sleeve Shirts',
    'asset': 'shirt_orange',
    'price': '165',
    'color': const Color(0xFFFFFAF6),
    'isFavorite': true,
  },
  {
    'name': 'Casual Henly Shirts',
    'asset': 'tshirt_black',
    'price': '175',
    'color': const Color(0xFFEFEFF2),
    'isFavorite': false,
  },
  {
    'name': 'Curved Hem Shirts',
    'asset': 'shirt_green',
    'price': '100',
    'color': const Color(0xFFEDFDF4),
    'isFavorite': false,
  },
  {
    'name': 'Casual Nolin',
    'asset': 'tshirt_green',
    'price': '100',
    'color': const Color(0x2640442B),
    'isFavorite': true,
  },
  {
    'name': 'Curved Hem Shirts',
    'asset': 'shirt_beach',
    'price': '100',
    'color': const Color(0x1FFEF171),
    'isFavorite': true,
  },
  {
    'name': 'Casual Nolin',
    'asset': 'shirt_teal',
    'price': '165',
    'color': const Color(0x47C3F9F1),
    'isFavorite': false,
  },
  {
    'name': 'Curved Hem Shirts',
    'asset': 'shirt_beach',
    'price': '100',
    'color': const Color(0x1FFEF171),
    'isFavorite': true,
  },
  {
    'name': 'Casual Nolin',
    'asset': 'shirt_teal',
    'price': '165',
    'color': const Color(0x47C3F9F1),
    'isFavorite': true,
  },
];

class SearchScreen extends StatelessWidget {
  const SearchScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: kPagePadding,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 32.w,
                        child: SvgPicture.asset(
                          'asset/images/home/svg/menu.svg',
                          width: 24.sp,
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
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
                    height: 32.h,
                  ),
                  Stack(
                    children: [
                      TextField(
                        style: const TextStyle(color: Colors.black),
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent searches',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12.sp,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: Padding(
                padding: kPagePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Search results showing "Shirt"',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.w,
                          mainAxisSpacing: 16.w,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: shirts.length,
                        itemBuilder: (context, index) {
                          return _SearchCard(
                            asset: shirts[index]['asset'] as String,
                            name: shirts[index]['name'] as String,
                            price: shirts[index]['price'] as String,
                            color: shirts[index]['color'] as Color,
                            isFavorite: shirts[index]['isFavorite'] as bool,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchCard extends StatelessWidget {
  const _SearchCard({
    required this.asset,
    required this.name,
    required this.price,
    required this.color,
    required this.isFavorite,
  });

  final String asset;
  final String name;
  final String price;
  final Color color;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Stack(
              children: [
                Container(
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
                Positioned(
                  right: 4.w,
                  top: 4.w,
                  child: Container(
                    padding: EdgeInsets.all(4.w),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      isFavorite
                          ? 'asset/images/home/svg/heart_filled.svg'
                          : 'asset/images/home/svg/heart.svg',
                      width: 16.sp,
                    ),
                  ),
                )
              ],
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
    );
  }
}
