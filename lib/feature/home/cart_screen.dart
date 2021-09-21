import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants.dart';
import '../../routes/routes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen();

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
                    'My Cart',
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
              const _ItemCard(
                asset: 'asset/images/home/png/tshirt_green.png',
                color: Color(0x203E4229),
                name: 'Henley Shirts',
                price: '250',
                quantity: '1',
              ),
              const _ItemCard(
                asset: 'asset/images/home/png/shirt_teal.png',
                color: Color(0x2087C7B9),
                name: 'Casual Shirts',
                price: '145',
                quantity: '2',
              ),
              const _ItemCard(
                asset: 'asset/images/home/png/woman_grey.png',
                color: Color(0x209C9CA4),
                name: 'Casual Nolin',
                price: '225',
                quantity: '2',
              ),
              const _ItemCard(
                asset: 'asset/images/home/png/woman_pink.png',
                color: Color(0x20CAA0A4),
                name: 'Casual Nolin',
                price: '225',
                quantity: '2',
              ),
              const Spacer(),
              Row(
                children: [
                  const Text('Subtotal :'),
                  const Spacer(),
                  Text(
                    '\$740',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteGenerator.checkout);
                },
                child: const Text(
                  'Checkout',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemCard extends StatelessWidget {
  const _ItemCard({
    required this.name,
    required this.price,
    required this.quantity,
    required this.color,
    required this.asset,
  });

  final String name;
  final String price;
  final String quantity;
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
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: kLightAccent,
                      borderRadius: BorderRadius.circular(
                        6.r,
                      ),
                    ),
                    child: Icon(
                      Icons.add_rounded,
                      color: kLightPrimary,
                      size: 12.sp,
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    quantity,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: kLightAccent,
                      borderRadius: BorderRadius.circular(
                        6.r,
                      ),
                    ),
                    child: Icon(
                      Icons.remove_rounded,
                      color: kLightPrimary,
                      size: 12.sp,
                    ),
                  ),
                ],
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
