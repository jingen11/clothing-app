import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theme.dart';
import 'routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: () {
          return MaterialApp(
            title: 'Clothing App',
            debugShowCheckedModeBanner: false,
            color: Colors.white,
            theme: kAppThemeData[AppTheme.Light],
            initialRoute: RouteGenerator.splash,
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        });
    // return FutureBuilder<void>(
    //   future: SystemChrome.setPreferredOrientations(
    //     [
    //       DeviceOrientation.portraitUp,
    //     ],
    //   ),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return ScreenUtilInit(
    //         designSize: const Size(414, 896),
    //         builder: () {
    //           return MaterialApp(
    //             title: 'Clothing App',
    //             debugShowCheckedModeBanner: false,
    //             color: Colors.white,
    //             theme: kAppThemeData[AppTheme.Light],
    //             initialRoute: RouteGenerator.splash,
    //             onGenerateRoute: RouteGenerator.generateRoute,
    //           );
    //         },
    //       );
    //     }

    //     return MaterialApp(
    //       title: 'Clothing App',
    //       debugShowCheckedModeBanner: false,
    //       color: Colors.white,
    //       home: Container(),
    //     );
    //   },
    // );
  }
}
