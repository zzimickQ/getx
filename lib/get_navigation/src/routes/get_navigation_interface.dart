import 'package:flutter/widgets.dart';

import '../../../get_instance/src/bindings_interface.dart';
import '../routes/get_route.dart';
import '../routes/transitions_type.dart';

mixin IGetNavigation {
  Future<T?> to<T>(
    Widget Function() page, {
    bool? opaque,
    Transition? transition,
    Curve? curve,
    Duration? duration,
    int? id,
    String? routeName,
    bool fullscreenDialog = false,
    dynamic arguments,
    List<BindingsInterface>? bindings,
    bool preventDuplicates = true,
    bool? popGesture,
    bool showCupertinoParallax = true,
    double Function(BuildContext context)? gestureWidth,
  });

  Future<T?> off<T>(
    Widget Function() page, {
    bool? opaque,
    Transition? transition,
    Curve? curve,
    Duration? duration,
    int? id,
    String? routeName,
    bool fullscreenDialog = false,
    dynamic arguments,
    List<BindingsInterface>? bindings,
    bool preventDuplicates = true,
    bool? popGesture,
    bool showCupertinoParallax = true,
    double Function(BuildContext context)? gestureWidth,
  });

  Future<T?>? offAll<T>(
    Widget Function() page, {
    bool Function(GetPage route)? predicate,
    bool opaque = true,
    bool? popGesture,
    int? id,
    String? routeName,
    dynamic arguments,
    List<BindingsInterface>? bindings,
    bool fullscreenDialog = false,
    Transition? transition,
    Curve? curve,
    Duration? duration,
    bool showCupertinoParallax = true,
    double Function(BuildContext context)? gestureWidth,
  });

  Future<T?> toNamed<T>(
    String page, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  });

  Future<T?> offNamed<T>(
    String page, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  });

  Future<T?>? offAllNamed<T>(
    String newRouteName, {
    // bool Function(GetPage route)? predicate,
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  });

  Future<T?>? offNamedUntil<T>(
    String page, {
    bool Function(GetPage route)? predicate,
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  });

  Future<T?> toNamedAndOffUntil<T>(
    String page,
    bool Function(GetPage) predicate, [
    Object? data,
  ]);

  Future<T?> offUntil<T>(
    Widget Function() page,
    bool Function(GetPage) predicate, [
    Object? arguments,
  ]);

  void back<T>([T? result]);

  Future<R?> backAndtoNamed<T, R>(String page, {T? result, Object? arguments});

  void backUntil(bool Function(GetPage) predicate);

  void goToUnknownPage([bool clearPages = true]);
}
