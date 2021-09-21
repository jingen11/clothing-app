import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';
import '../../routes/routes.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 1.sw,
          height: 1.sh,
          color: const Color(0x20333547),
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().statusBarHeight,
              ),
              Padding(
                padding: kPagePadding,
                child: Row(
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
                    Container(
                      width: 32.w,
                      height: 32.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'asset/images/home/svg/fav.svg',
                          width: 24.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: 0.7.sw,
                      child: Image.asset(
                        'asset/images/home/png/tshirt_black_big.png',
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 1.sw,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(
                              32.r,
                            ),
                          ),
                        ),
                        padding: kCardPadding,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Casual Henley',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Shirts',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '\$175',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              'A Henley shirt is a collarless pullover shirt, '
                              'by a round neckline and a placket about 3 to 5 '
                              'inches (8 to 13 cm) long and usually having 2–5 buttons.',
                              style: TextStyle(
                                color: kLightTextColorGrey,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: const [
                                Text(
                                  'Colors',
                                  style: TextStyle(
                                    color: kLightTextColorGrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1.sp,
                                    ),
                                  ),
                                  child: Container(
                                    height: 20.w,
                                    width: 20.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFBEE8EA),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: kLightPrimary,
                                      width: 1.sp,
                                    ),
                                  ),
                                  child: Container(
                                    height: 20.w,
                                    width: 20.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1.sp,
                                    ),
                                  ),
                                  child: Container(
                                    height: 20.w,
                                    width: 20.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFCEE3F5),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1.sp,
                                    ),
                                  ),
                                  child: Container(
                                    height: 20.w,
                                    width: 20.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFF4E5C3),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(RouteGenerator.cart);
                              },
                              child: const Text(
                                'Add to Cart',
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
