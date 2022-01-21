import 'package:flutter/material.dart';
import 'package:router/src/option.dart';

class TransitionBuilderRoute extends PageRouteBuilder {
  final Widget widget;
  final Widget Function(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) transition;
  TransitionBuilderRoute({
    required this.widget,
    required this.transition,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return transition(
              context,
              animation,
              secondaryAnimation,
              child,
            );
          },
        );
  factory TransitionBuilderRoute.none({required Widget widget}) =>
      TransitionBuilderRoute(widget: widget, transition: TransitionOption.none);
  factory TransitionBuilderRoute.slideRight({required Widget widget}) =>
      TransitionBuilderRoute(widget: widget, transition: TransitionOption.slideRight);
  factory TransitionBuilderRoute.slideLeft({required Widget widget}) =>
      TransitionBuilderRoute(widget: widget, transition: TransitionOption.slideLeft);
  factory TransitionBuilderRoute.slideUp({required Widget widget}) =>
      TransitionBuilderRoute(widget: widget, transition: TransitionOption.slideUp);
  factory TransitionBuilderRoute.slideDown({required Widget widget}) =>
      TransitionBuilderRoute(widget: widget, transition: TransitionOption.slideDown);
  factory TransitionBuilderRoute.scale({required Widget widget}) =>
      TransitionBuilderRoute(widget: widget, transition: TransitionOption.scale);
  factory TransitionBuilderRoute.size({required Widget widget}) =>
      TransitionBuilderRoute(widget: widget, transition: TransitionOption.size);
  factory TransitionBuilderRoute.fade({required Widget widget}) =>
      TransitionBuilderRoute(widget: widget, transition: TransitionOption.fade);
}

class RoutHelper {
  final Map<String, PageRouteBuilder Function(Object?)> routes;

  const RoutHelper({required this.routes});

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (routes.containsKey(settings.name)) {
      var route = routes[settings.name]!(settings.arguments);
      return route;
    }
    throw UnsupportedError('Unknown route: ${settings.name}');
  }
}
