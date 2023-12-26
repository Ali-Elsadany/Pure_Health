import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/router/app_router.dart';
import '../core/theme/theme.dart';


class MarkazElamal extends StatelessWidget {
  const MarkazElamal({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(428, 926),
          builder: (context, state) {
            return MaterialApp(
              scrollBehavior: ScrollConfiguration.of(context).copyWith(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics())),

              debugShowCheckedModeBanner: false,
              theme: getAppTheme(),
              initialRoute: Routes.initialRoute,
              onGenerateRoute: AppRoutes.generateRoute,
            );
          }
    );
  }
}
