import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen();

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
                    'My Orders',
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
                height: 24.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Completed',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kLightPrimary,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Cancelled',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: kLightTextColorGrey,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: kLightPrimary,
                        borderRadius: BorderRadius.circular(
                          2.r,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1.h,
                      decoration: BoxDecoration(
                        color: kLightPlaceholderText.withOpacity(0.05),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              const _OrderCard(
                asset: 'asset/images/home/png/tshirt_green.png',
                color: Color(0x203E4229),
                name: 'Henley Shirts',
                price: '250',
                time: 'Today',
              ),
              const _OrderCard(
                asset: 'asset/images/home/png/shirt_teal.png',
                color: Color(0x2087C7B9),
                name: 'Casual Shirts',
                price: '145',
                time: '20 Jan\'2021',
              ),
              const _OrderCard(
                asset: 'asset/images/home/png/woman_grey.png',
                color: Color(0x209C9CA4),
                name: 'Casual Nolin',
                price: '145',
                time: '20 Mar\'2021',
              ),
              const _OrderCard(
                asset: 'asset/images/home/png/woman_pink.png',
                color: Color(0x20CAA0A4),
                name: 'Casual Nolin',
                price: '145',
                time: '20 Mar\'2021',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderCard extends StatelessWidget {
  const _OrderCard({
    required this.name,
    required this.price,
    required this.time,
    required this.color,
    required this.asset,
  });

  final String name;
  final String price;
  final String time;
  final Color color;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(
            8.w,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.r,
            ),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.r,
                  ),
                  color: color,
                ),
                width: 80.w,
                height: 64.w,
                child: Image.asset(asset),
              ),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: kLightTextColorGrey,
                          ),
                    ),
                    Text(
                      '\$$price',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    )
                  ],
                ),
              ),
              Text(
                time,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: kLightTextColorGrey,
                    ),
              ),
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
