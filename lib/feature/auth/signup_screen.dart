import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';
import '../../routes/routes.dart';
import '../widget/auth_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: kPagePadding,
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                SvgPicture.asset(
                  'asset/images/core/app_icon.svg',
                  width: 48.sp,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  'Sign Up',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                const AuthField(
                  iconName: 'asset/images/auth/user.svg',
                  hintText: 'Name',
                ),
                SizedBox(
                  height: 16.h,
                ),
                const AuthField(
                  iconName: 'asset/images/auth/mail.svg',
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 16.h,
                ),
                const AuthField(
                  iconName: 'asset/images/auth/password.svg',
                  hintText: 'Password',
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (_) {},
                      fillColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      'I accept all the ',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: kLightTextColorGrey,
                          ),
                    ),
                    Text(
                      'Terms & Conditions',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                  ),
                ),
                SizedBox(
                  height: 48.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      const Text(
                        'Or',
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.white,
                        shape: const CircleBorder(),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 64.w,
                            height: 64.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'asset/images/auth/fb.svg',
                                width: 32.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32.w,
                    ),
                    ClipOval(
                      child: Material(
                        color: Colors.white,
                        shape: const CircleBorder(),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 64.w,
                            height: 64.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'asset/images/auth/google.svg',
                                width: 32.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(RouteGenerator.login);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Alreadt have an account? ',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: kLightTextColorGrey,
                            ),
                      ),
                      Text(
                        'Log In',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
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
