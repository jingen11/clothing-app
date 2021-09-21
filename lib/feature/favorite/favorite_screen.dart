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

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen();

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
                  'Favorite',
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
            Expanded(
              child: Padding(
                padding: kPagePadding,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.w,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: shirts.length,
                  itemBuilder: (context, index) {
                    return _FavoriteCard(
                      asset: shirts[index]['asset'] as String,
                      name: shirts[index]['name'] as String,
                      price: shirts[index]['price'] as String,
                      color: shirts[index]['color'] as Color,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class _FavoriteCard extends StatelessWidget {
  const _FavoriteCard({
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
                      'asset/images/home/svg/heart_filled.svg',
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
