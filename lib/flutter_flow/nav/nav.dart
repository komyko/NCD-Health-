import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const StartPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const StartPageWidget(),
        ),
        FFRoute(
          name: 'Start_Page',
          path: '/startPage',
          builder: (context, params) => const StartPageWidget(),
        ),
        FFRoute(
          name: 'Login_Page_Template',
          path: '/loginPageTemplate',
          builder: (context, params) => const LoginPageTemplateWidget(),
        ),
        FFRoute(
          name: 'Register_Page',
          path: '/registerPage',
          builder: (context, params) => const RegisterPageWidget(),
        ),
        FFRoute(
          name: 'lap_page',
          path: '/lapPage',
          builder: (context, params) => const LapPageWidget(),
        ),
        FFRoute(
          name: 'age_page',
          path: '/agePage',
          builder: (context, params) => const AgePageWidget(),
        ),
        FFRoute(
          name: 'tallandAge_page',
          path: '/tallandAgePage',
          builder: (context, params) => const TallandAgePageWidget(),
        ),
        FFRoute(
          name: 'food2_page',
          path: '/food2Page',
          builder: (context, params) => const Food2PageWidget(),
        ),
        FFRoute(
          name: 'congenital_page',
          path: '/congenitalPage',
          builder: (context, params) => const CongenitalPageWidget(),
        ),
        FFRoute(
          name: 'stress3_page',
          path: '/stress3Page',
          builder: (context, params) => Stress3PageWidget(
            sumTotal3: params.getParam(
              'sumTotal3',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'profile1_page',
          path: '/profile1Page',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'profile1_page')
              : Profile1PageWidget(
                  numgender: params.getParam(
                    'numgender',
                    ParamType.String,
                  ),
                  numage: params.getParam(
                    'numage',
                    ParamType.String,
                  ),
                  numweight: params.getParam(
                    'numweight',
                    ParamType.String,
                  ),
                  numtall: params.getParam(
                    'numtall',
                    ParamType.String,
                  ),
                  numcon: params.getParam(
                    'numcon',
                    ParamType.String,
                  ),
                ),
        ),
        FFRoute(
          name: 'sleep1_page',
          path: '/sleep1Page',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'sleep1_page')
              : Sleep1PageWidget(
                  sleep: params.getParam(
                    'sleep',
                    ParamType.String,
                  ),
                ),
        ),
        FFRoute(
          name: 'stress1_page',
          path: '/stress1Page',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'stress1_page')
              : const Stress1PageWidget(),
        ),
        FFRoute(
          name: 'sleep2_page',
          path: '/sleep2Page',
          builder: (context, params) => const Sleep2PageWidget(),
        ),
        FFRoute(
          name: 'stress2_page',
          path: '/stress2Page',
          builder: (context, params) => Stress2PageWidget(
            stress2: params.getParam(
              'stress2',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Trainning_page',
          path: '/trainningPage',
          builder: (context, params) => const TrainningPageWidget(),
        ),
        FFRoute(
          name: 'RunningRecord',
          path: '/runningRecord',
          builder: (context, params) => RunningRecordWidget(
            droprun: params.getParam<String>(
              'droprun',
              ParamType.String,
              isList: true,
            ),
            runtime: params.getParam(
              'runtime',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'aboutapp_page',
          path: '/aboutappPage',
          builder: (context, params) => const AboutappPageWidget(),
        ),
        FFRoute(
          name: 'select_sex_page',
          path: '/selectSexPage',
          builder: (context, params) => const SelectSexPageWidget(),
        ),
        FFRoute(
          name: 'Alcohol_Page',
          path: '/alcoholPage',
          builder: (context, params) => const AlcoholPageWidget(),
        ),
        FFRoute(
          name: 'food_Success',
          path: '/foodSuccess',
          builder: (context, params) => const FoodSuccessWidget(),
        ),
        FFRoute(
          name: 'home_page',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'home_page')
              : const HomePageWidget(),
        ),
        FFRoute(
          name: 'contact_page',
          path: '/contactPage',
          builder: (context, params) => const ContactPageWidget(),
        ),
        FFRoute(
          name: 'smoking_page',
          path: '/smokingPage',
          builder: (context, params) => const SmokingPageWidget(),
        ),
        FFRoute(
          name: 'Exercise',
          path: '/exercise',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Exercise')
              : ExerciseWidget(
                  run: params.getParam(
                    'run',
                    ParamType.String,
                  ),
                ),
        ),
        FFRoute(
          name: 'Trainning_Action1',
          path: '/trainningAction1',
          builder: (context, params) => const TrainningAction1Widget(),
        ),
        FFRoute(
          name: 'Trainning_Action3',
          path: '/trainningAction3',
          builder: (context, params) => const TrainningAction3Widget(),
        ),
        FFRoute(
          name: 'Trainning_Action4',
          path: '/trainningAction4',
          builder: (context, params) => const TrainningAction4Widget(),
        ),
        FFRoute(
          name: 'Trainning_Action5',
          path: '/trainningAction5',
          builder: (context, params) => const TrainningAction5Widget(),
        ),
        FFRoute(
          name: 'Breathing_exercise',
          path: '/breathingExercise',
          builder: (context, params) => const BreathingExerciseWidget(),
        ),
        FFRoute(
          name: 'New2_page',
          path: '/new2Page',
          builder: (context, params) => const New2PageWidget(),
        ),
        FFRoute(
          name: 'New3_page',
          path: '/new3Page',
          builder: (context, params) => const New3PageWidget(),
        ),
        FFRoute(
          name: 'New1_page',
          path: '/new1Page',
          builder: (context, params) => const New1PageWidget(),
        ),
        FFRoute(
          name: 'RunningRecor_Success',
          path: '/runningRecorSuccess',
          builder: (context, params) => RunningRecorSuccessWidget(
            multical: params.getParam(
              'multical',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'sleep_success',
          path: '/sleepSuccess',
          builder: (context, params) => SleepSuccessWidget(
            multical: params.getParam(
              'multical',
              ParamType.String,
            ),
            sleep: params.getParam(
              'sleep',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'stress_technical',
          path: '/stressTechnical',
          builder: (context, params) => const StressTechnicalWidget(),
        ),
        FFRoute(
          name: 'sleep3_page',
          path: '/sleep3Page',
          builder: (context, params) => const Sleep3PageWidget(),
        ),
        FFRoute(
          name: 'food_page1_realBroken',
          path: '/foodPage1RealBroken',
          builder: (context, params) => FoodPage1RealBrokenWidget(
            foodcal: params.getParam(
              'foodcal',
              ParamType.String,
            ),
            foodcal2: params.getParam(
              'foodcal2',
              ParamType.String,
            ),
            foodcal3: params.getParam(
              'foodcal3',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Trainning_Action2',
          path: '/trainningAction2',
          builder: (context, params) => const TrainningAction2Widget(),
        ),
        FFRoute(
          name: 'foodmorning',
          path: '/foodmorning',
          builder: (context, params) => const FoodmorningWidget(),
        ),
        FFRoute(
          name: 'foodafternoon',
          path: '/foodafternoon',
          builder: (context, params) => const FoodafternoonWidget(),
        ),
        FFRoute(
          name: 'foodevening',
          path: '/foodevening',
          builder: (context, params) => const FoodeveningWidget(),
        ),
        FFRoute(
          name: 'food_page1_real',
          path: '/foodPage1Real',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'food_page1_real')
              : FoodPage1RealWidget(
                  foodcall: params.getParam(
                    'foodcall',
                    ParamType.int,
                  ),
                ),
        ),
        FFRoute(
          name: 'lap_page2Copy',
          path: '/lapPage2Copy',
          builder: (context, params) => LapPage2CopyWidget(
            bp: params.getParam(
              'bp',
              ParamType.int,
            ),
            bmi: params.getParam(
              'bmi',
              ParamType.double,
            ),
            fbs: params.getParam(
              'fbs',
              ParamType.int,
            ),
            tg: params.getParam(
              'tg',
              ParamType.int,
            ),
            ldl: params.getParam(
              'ldl',
              ParamType.int,
            ),
            sgpt: params.getParam(
              'sgpt',
              ParamType.int,
            ),
            cr: params.getParam(
              'cr',
              ParamType.double,
            ),
            ckd: params.getParam(
              'ckd',
              ParamType.int,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/startPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Page_1_Starter_Page.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
