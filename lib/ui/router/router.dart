import 'package:flutter/material.dart';
import 'package:wall_pic_app/domain/models/photo/photo.dart';
import 'package:wall_pic_app/ui/presenters/detail_page/detail_page.dart';
import 'package:wall_pic_app/ui/presenters/home_page/home_page.dart';
import 'package:wall_pic_app/ui/presenters/splash_page/splash.dart';

class AppRoutes {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return _createRoute(Splash());
      case HOME_PAGE:
        return _createRoute(HomePage());
      case DETAIL_PAGE:
        Photo args = settings.arguments as Photo;
        return _createRoute(
          DetailPage(
            photoData: args,
          ),
        );
    }
  }

  static String initialRoute = SPLASH;
  static const String SPLASH = '/splash';
  static const String HOME_PAGE = SPLASH + '/home_page';
  static const String DETAIL_PAGE = HOME_PAGE + '/detail_page';

  static Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation1, animation2, child) =>
          FadeTransition(opacity: animation1, child: child),
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}
