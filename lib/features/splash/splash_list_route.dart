import 'package:auto_route/auto_route.dart';

class SplashListRoute extends PageRouteInfo {
  const SplashListRoute({List<PageRouteInfo>? children})
      : super(name, initialChildren: children);

  static const String name = 'SplashListRoute';
  static const PageInfo<void> page = PageInfo<void>(name);
}
