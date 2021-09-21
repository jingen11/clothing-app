import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../core/constants.dart';
import '../../routes/routes.dart';
import '../favorite/favorite_screen.dart';
import '../home/home_screen.dart';
import '../order/order_screen.dart';
import '../profile/profile_screen.dart';

final List<Map<String, Object>> screens = [
  {
    'activeIcon': 'home_filled',
    'inactiveIcon': 'home',
  },
  {
    'activeIcon': 'cart_filled',
    'inactiveIcon': 'cart',
    'widget': const OrderScreen(),
  },
  {
    'activeIcon': 'fav_filled',
    'inactiveIcon': 'fav',
    'widget': const FavoriteScreen(),
  },
  {
    'activeIcon': 'profile_filled',
    'inactiveIcon': 'profile',
    'widget': const ProfileScreen(),
  }
];

class TabScreen extends StatefulWidget {
  const TabScreen();

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final _drawerController = ZoomDrawerController();

  Color scaffoldColor = kLightBg;
  int currentIndex = 0;

  void changeBgColor() {
    if (scaffoldColor == kLightBg) {
      setState(() {
        scaffoldColor = Colors.white;
      });
    } else {
      setState(() {
        scaffoldColor = kLightBg;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      showShadow: true,
      borderRadius: 32.r,
      backgroundColor: Colors.grey[300]!,
      angle: 0,
      menuScreen: _MenuScreen(
        drawerController: _drawerController,
        callback: changeBgColor,
        setState: (val) {
          setState(() {
            currentIndex = val;
          });
        },
      ),
      mainScreen: _TabScaffold(
        controller: _drawerController,
        callback: changeBgColor,
        scaffoldColor: scaffoldColor,
        currentIndex: currentIndex,
        setIndex: (val) {
          setState(() {
            currentIndex = val;
          });
        },
      ),
    );
  }
}

class _TabScaffold extends StatefulWidget {
  const _TabScaffold({
    required this.controller,
    required this.scaffoldColor,
    required this.callback,
    required this.setIndex,
    required this.currentIndex,
  });

  final ZoomDrawerController controller;
  final void Function() callback;
  final void Function(int) setIndex;
  final Color scaffoldColor;
  final int currentIndex;

  @override
  State<_TabScaffold> createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<_TabScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Stack(
          children: [
            widget.currentIndex == 0
                ? HomeScreen(
                    controller: widget.controller,
                    callback: widget.callback,
                    scaffoldColor: widget.scaffoldColor,
                  )
                : screens[widget.currentIndex]['widget'] as Widget,
            Positioned(
              bottom: 0,
              child: Container(
                width: 1.sw,
                height: 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      16.r,
                    ),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    screens.length,
                    (index) => NavButton(
                        onTap: () {
                          widget.setIndex(index);
                        },
                        isActive: index == widget.currentIndex,
                        activeIcon: screens[index]['activeIcon'] as String,
                        inactiveIcon: screens[index]['inactiveIcon'] as String),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  const NavButton({
    required this.onTap,
    required this.isActive,
    required this.activeIcon,
    required this.inactiveIcon,
  });

  final void Function()? onTap;
  final bool isActive;
  final String activeIcon;
  final String inactiveIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 80.h,
        width: 48.w,
        child: Stack(
          children: [
            SizedBox(
              height: 80.h,
              width: 48.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isActive
                      ? SvgPicture.asset(
                          'asset/images/tab/$activeIcon.svg',
                        )
                      : SvgPicture.asset(
                          'asset/images/tab/$inactiveIcon.svg',
                        ),
                ],
              ),
            ),
            Positioned(
              top: -10,
              left: 0,
              right: 0,
              child: Container(
                width: 16.w,
                height: 16.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive ? kLightPrimary : Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuScreen extends StatelessWidget {
  const _MenuScreen({
    required this.drawerController,
    required this.callback,
    required this.setState,
  });

  final ZoomDrawerController drawerController;
  final void Function() callback;
  final void Function(int) setState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          drawerController.close!();
          callback();
        },
        child: Container(
          width: 1.sw,
          height: 1.sh,
          color: kLightBg,
          child: SafeArea(
            child: Padding(
              padding: kPagePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      drawerController.close!();
                      callback();
                      setState(3);
                    },
                    child: Row(
                      children: [
                        ClipOval(
                          child: SizedBox(
                            width: 64.w,
                            height: 64.w,
                            child: Image.asset(
                              'asset/images/home/png/profile.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alex Nikiforov',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'Fashion Designer',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: kLightTextColorGrey,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 24.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      drawerController.close!();
                      callback();
                      setState(2);
                    },
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            4.w,
                          ),
                          decoration: BoxDecoration(
                            color: kLightAccent,
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'asset/images/menu/favorite.svg',
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Text(
                          'My favorites',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteGenerator.wallet);
                    },
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            4.w,
                          ),
                          decoration: BoxDecoration(
                            color: kLightAccent,
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'asset/images/menu/wallet.svg',
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Text(
                          'Wallets',
                          style: TextStyle(
                            color: kLightTextColorGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      drawerController.close!();
                      callback();
                      setState(1);
                    },
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            4.w,
                          ),
                          decoration: BoxDecoration(
                            color: kLightAccent,
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'asset/images/menu/bag.svg',
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Text(
                          'My orders',
                          style: TextStyle(
                            color: kLightTextColorGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            4.w,
                          ),
                          decoration: BoxDecoration(
                            color: kLightAccent,
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'asset/images/menu/doc.svg',
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Text(
                          'About us',
                          style: TextStyle(
                            color: kLightTextColorGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            4.w,
                          ),
                          decoration: BoxDecoration(
                            color: kLightAccent,
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'asset/images/menu/privacy.svg',
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Text(
                          'Privacy policy',
                          style: TextStyle(
                            color: kLightTextColorGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteGenerator.setting);
                    },
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            4.w,
                          ),
                          decoration: BoxDecoration(
                            color: kLightAccent,
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'asset/images/menu/setting.svg',
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Text(
                          'Settings',
                          style: TextStyle(
                            color: kLightTextColorGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            4.w,
                          ),
                          decoration: BoxDecoration(
                            color: kLightAccent,
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'asset/images/menu/logout.svg',
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Text(
                          'Log out',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'asset/images/core/app_icon.svg',
                    width: 64.w,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
