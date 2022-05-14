import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wall_pic_app/ui/router/router.dart';

class WallPicApp extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();

  WallPicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Center(
      child: Container(
        // width: kIsWeb ? 428 : double.infinity,
        // height: kIsWeb ? 926 : double.infinity,
        child: ScreenUtilInit(
          designSize: const Size(360, 640),
          builder: (_) => MaterialApp(
            navigatorKey: _navigatorKey,
            // locale: Locale('fa'),
            // localizationsDelegates:
            //     AppLocalizations.localizationsDelegates,
            // supportedLocales: AppLocalizations.supportedLocales,
            title: 'WallPic',
            // theme: theme,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRoutes.generateRoute,
            initialRoute: AppRoutes.initialRoute,
          ),
        ),
      ),
    );
  }
}
