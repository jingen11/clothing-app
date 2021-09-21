import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants.dart';
import '../../routes/routes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPagePadding,
          child: SizedBox(
            width: 1.sw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 0.6.sw,
                  height: 0.6.sw,
                  decoration: const BoxDecoration(
                    color: kLightPrimary,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      width: 0.6.sw - 32.w,
                      height: 0.6.sw - 32.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          width: 80.w,
                          height: 80.w,
                          decoration: const BoxDecoration(
                            color: kLightAccent,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.check_rounded,
                            color: kLightPrimary,
                            size: 64.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 64.h,
                ),
                Text(
                  'Congratulation!!!',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Payment is the transfer of money '
                  'services in exchange product or Payments ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: kLightTextColorGrey,
                      ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Get your receipt',
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      kLightAccent,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(
                      RouteGenerator.home,
                    );
                  },
                  child: Text(
                    'Back to Home',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: kLightPrimary,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
