import 'package:auto_route/auto_route.dart';

import '../../features/splash/presentation/pages/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        // AutoRoute(page: SigninPage),
        // AutoRoute(page: SignupPage),
        // AutoRoute(page: HomePage),
        // AutoRoute(page: page)
      ];
}
