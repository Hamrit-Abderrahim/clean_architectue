import 'package:clean_architectue/core/routing/app_router.dart';
import 'package:clean_architectue/core/routing/routes.dart';
import 'package:clean_architectue/core/theming/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BooklyApp(appRouter: AppRouter()));
}

class BooklyApp extends StatelessWidget {
  final AppRouter appRouter;

  const BooklyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: Routes.splachScreen,
      // : Routes.loginScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
