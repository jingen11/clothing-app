import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';
import '../../routes/routes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen();

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
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 24.sp,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Checkout',
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
                  Text(
                    'Delivery address',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                padding: kCardPadding,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    8.r,
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'asset/images/home/svg/checkbox.svg',
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Home',
                          ),
                          const Text(
                            '(342) 4522019',
                            style: TextStyle(
                              color: kLightTextColorGrey,
                            ),
                          ),
                          Text(
                            '220 New York',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: kLightTextColorGrey,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset('asset/images/home/svg/edit.svg')
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: kCardPadding,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kLightTextColorGrey.withOpacity(0.1),
                  ),
                  borderRadius: BorderRadius.circular(
                    8.r,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 24.w,
                      height: 24.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kLightTextColorGrey.withOpacity(0.1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Office',
                          ),
                          const Text(
                            '(342) 4522019',
                            style: TextStyle(
                              color: kLightTextColorGrey,
                            ),
                          ),
                          Text(
                            '220 Montmarte,paris',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: kLightTextColorGrey,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset('asset/images/home/svg/edit.svg')
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Text(
                    'Billing information',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                padding: kCardPadding,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    8.r,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Delivery Fee',
                            style: TextStyle(
                              color: kLightTextColorGrey,
                            ),
                          ),
                        ),
                        Text(
                          ':',
                          style: TextStyle(
                            color: kLightTextColorGrey,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            '\$50',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Subtotal',
                            style: TextStyle(
                              color: kLightTextColorGrey,
                            ),
                          ),
                        ),
                        Text(
                          ':',
                          style: TextStyle(
                            color: kLightTextColorGrey,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            '\$740',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Total',
                            style: TextStyle(
                              color: kLightTextColorGrey,
                            ),
                          ),
                        ),
                        Text(
                          ':',
                          style: TextStyle(
                            color: kLightTextColorGrey,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            '\$790',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Text(
                    'Payment Method',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 40.h,
                        width: 56.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'asset/images/home/svg/apple_pay.svg',
                            width: 40.w,
                          ),
                        ),
                      ),
                      Positioned(
                        right: -5.w,
                        top: -5.w,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF39CE8A),
                          ),
                          padding: EdgeInsets.all(
                            4.w,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 40.h,
                    width: 56.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'asset/images/home/svg/visa.svg',
                        width: 40.w,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 56.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'asset/images/home/svg/master.svg',
                        width: 40.w,
                        height: 24.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 56.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'asset/images/home/svg/paypal.svg',
                        width: 40.w,
                        height: 24.h,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteGenerator.success,
                    (_) {
                      return false;
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        4.w,
                      ),
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: kLightPrimary,
                        size: 24.sp,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Text(
                      'Swipe for Payment',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
