import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? BASEGlobalWalletDashboardWidget()
          : AUTHOnboarding2Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? BASEGlobalWalletDashboardWidget()
              : AUTHOnboarding2Widget(),
        ),
        FFRoute(
          name: BASEGlobalWalletDashboardWidget.routeName,
          path: BASEGlobalWalletDashboardWidget.routePath,
          builder: (context, params) => BASEGlobalWalletDashboardWidget(),
        ),
        FFRoute(
          name: GESTIONWALLETAddTransactionWidget.routeName,
          path: GESTIONWALLETAddTransactionWidget.routePath,
          builder: (context, params) => GESTIONWALLETAddTransactionWidget(),
        ),
        FFRoute(
          name: GESTIONWALLETTransactionHistoryWidget.routeName,
          path: GESTIONWALLETTransactionHistoryWidget.routePath,
          builder: (context, params) => GESTIONWALLETTransactionHistoryWidget(),
        ),
        FFRoute(
          name: BASEBudgetManagementWidget.routeName,
          path: BASEBudgetManagementWidget.routePath,
          builder: (context, params) => BASEBudgetManagementWidget(),
        ),
        FFRoute(
          name: GESTIONBUDGETBudgetDetailsWidget.routeName,
          path: GESTIONBUDGETBudgetDetailsWidget.routePath,
          builder: (context, params) => GESTIONBUDGETBudgetDetailsWidget(),
        ),
        FFRoute(
          name: GESTIONBUDGETSetNewBudgetWidget.routeName,
          path: GESTIONBUDGETSetNewBudgetWidget.routePath,
          builder: (context, params) => GESTIONBUDGETSetNewBudgetWidget(),
        ),
        FFRoute(
          name: BASESplitExpensesGroupsWidget.routeName,
          path: BASESplitExpensesGroupsWidget.routePath,
          builder: (context, params) => BASESplitExpensesGroupsWidget(),
        ),
        FFRoute(
          name: GESTIONGROUPESCreateGroupWidget.routeName,
          path: GESTIONGROUPESCreateGroupWidget.routePath,
          builder: (context, params) => GESTIONGROUPESCreateGroupWidget(),
        ),
        FFRoute(
          name: GESTIONGROUPESAddExpenseWidget.routeName,
          path: GESTIONGROUPESAddExpenseWidget.routePath,
          builder: (context, params) => GESTIONGROUPESAddExpenseWidget(),
        ),
        FFRoute(
          name: GESTIONGROUPESGroupDetailsWidget.routeName,
          path: GESTIONGROUPESGroupDetailsWidget.routePath,
          builder: (context, params) => GESTIONGROUPESGroupDetailsWidget(),
        ),
        FFRoute(
          name: BASEInvestmentsSavingsGoalsWidget.routeName,
          path: BASEInvestmentsSavingsGoalsWidget.routePath,
          builder: (context, params) => BASEInvestmentsSavingsGoalsWidget(),
        ),
        FFRoute(
          name: GESTIONINVESTGoalDetailsWidget.routeName,
          path: GESTIONINVESTGoalDetailsWidget.routePath,
          builder: (context, params) => GESTIONINVESTGoalDetailsWidget(),
        ),
        FFRoute(
          name: GESTIONINVESTSetNewGoalWidget.routeName,
          path: GESTIONINVESTSetNewGoalWidget.routePath,
          builder: (context, params) => GESTIONINVESTSetNewGoalWidget(),
        ),
        FFRoute(
          name: ProfileSecurityWidget.routeName,
          path: ProfileSecurityWidget.routePath,
          builder: (context, params) => ProfileSecurityWidget(),
        ),
        FFRoute(
          name: TransactionHistoryWidget.routeName,
          path: TransactionHistoryWidget.routePath,
          builder: (context, params) => TransactionHistoryWidget(),
        ),
        FFRoute(
          name: AUTHLoginWidget.routeName,
          path: AUTHLoginWidget.routePath,
          builder: (context, params) => AUTHLoginWidget(),
        ),
        FFRoute(
          name: AUTHRegisterWidget.routeName,
          path: AUTHRegisterWidget.routePath,
          builder: (context, params) => AUTHRegisterWidget(),
        ),
        FFRoute(
          name: AUTHForgotPasswordWidget.routeName,
          path: AUTHForgotPasswordWidget.routePath,
          builder: (context, params) => AUTHForgotPasswordWidget(),
        ),
        FFRoute(
          name: AUTHProfileSetupWidget.routeName,
          path: AUTHProfileSetupWidget.routePath,
          builder: (context, params) => AUTHProfileSetupWidget(),
        ),
        FFRoute(
          name: AUTHOnboardingWidget.routeName,
          path: AUTHOnboardingWidget.routePath,
          builder: (context, params) => AUTHOnboardingWidget(),
        ),
        FFRoute(
          name: BASENotificationsCenterWidget.routeName,
          path: BASENotificationsCenterWidget.routePath,
          builder: (context, params) => BASENotificationsCenterWidget(),
        ),
        FFRoute(
          name: BASEGeneralSettingsWidget.routeName,
          path: BASEGeneralSettingsWidget.routePath,
          builder: (context, params) => BASEGeneralSettingsWidget(),
        ),
        FFRoute(
          name: TheMainMesCartesDashboardViewCardsTransactionsWidget.routeName,
          path: TheMainMesCartesDashboardViewCardsTransactionsWidget.routePath,
          builder: (context, params) =>
              TheMainMesCartesDashboardViewCardsTransactionsWidget(),
        ),
        FFRoute(
          name: AjouteruneCarteFormCreateaNewCardWidget.routeName,
          path: AjouteruneCarteFormCreateaNewCardWidget.routePath,
          builder: (context, params) =>
              AjouteruneCarteFormCreateaNewCardWidget(),
        ),
        FFRoute(
          name: ParamtresdelaCarteUpdateCardLimitsStatusWidget.routeName,
          path: ParamtresdelaCarteUpdateCardLimitsStatusWidget.routePath,
          asyncParams: {
            'cardToEdit': getDoc(['cards'], CardsRecord.fromSnapshot),
          },
          builder: (context, params) =>
              ParamtresdelaCarteUpdateCardLimitsStatusWidget(
            cardToEdit: params.getParam(
              'cardToEdit',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AaWidget.routeName,
          path: AaWidget.routePath,
          builder: (context, params) => AaWidget(),
        ),
        FFRoute(
          name: AUTHOnboarding2Widget.routeName,
          path: AUTHOnboarding2Widget.routePath,
          builder: (context, params) => AUTHOnboarding2Widget(),
        ),
        FFRoute(
          name: RechargerCarteWidget.routeName,
          path: RechargerCarteWidget.routePath,
          asyncParams: {
            'cardToTopUp': getDoc(['cards'], CardsRecord.fromSnapshot),
          },
          builder: (context, params) => RechargerCarteWidget(
            cardToTopUp: params.getParam(
              'cardToTopUp',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AjouteruneTransactionWidget.routeName,
          path: AjouteruneTransactionWidget.routePath,
          asyncParams: {
            'cardForTransaction': getDoc(['cards'], CardsRecord.fromSnapshot),
          },
          builder: (context, params) => AjouteruneTransactionWidget(
            cardForTransaction: params.getParam(
              'cardForTransaction',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AnalytiquesTransactionsWidget.routeName,
          path: AnalytiquesTransactionsWidget.routePath,
          asyncParams: {
            'cardForAnalytics': getDoc(['cards'], CardsRecord.fromSnapshot),
          },
          builder: (context, params) => AnalytiquesTransactionsWidget(
            cardForAnalytics: params.getParam(
              'cardForAnalytics',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AddWalletWidget.routeName,
          path: AddWalletWidget.routePath,
          builder: (context, params) => AddWalletWidget(
            nomWalletP: params.getParam(
              'nomWalletP',
              ParamType.String,
            ),
            soldeP: params.getParam(
              'soldeP',
              ParamType.double,
            ),
            limiteP: params.getParam(
              'limiteP',
              ParamType.double,
            ),
            depenseP: params.getParam(
              'depenseP',
              ParamType.double,
            ),
            revenuP: params.getParam(
              'revenuP',
              ParamType.double,
            ),
            objectifP: params.getParam(
              'objectifP',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: WalletDashboardWidget.routeName,
          path: WalletDashboardWidget.routePath,
          builder: (context, params) => WalletDashboardWidget(
            nomP: params.getParam(
              'nomP',
              ParamType.String,
            ),
            soldeP: params.getParam(
              'soldeP',
              ParamType.double,
            ),
            limit: params.getParam(
              'limit',
              ParamType.double,
            ),
            depTotP: params.getParam(
              'depTotP',
              ParamType.double,
            ),
            revTotP: params.getParam(
              'revTotP',
              ParamType.double,
            ),
            objectifP: params.getParam(
              'objectifP',
              ParamType.double,
            ),
            walletParam: params.getParam(
              'walletParam',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Wallet'],
            ),
            walletRef: params.getParam(
              'walletRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Wallet'],
            ),
            notif50P: params.getParam(
              'notif50P',
              ParamType.bool,
            ),
            notif70P: params.getParam(
              'notif70P',
              ParamType.bool,
            ),
            notif90P: params.getParam(
              'notif90P',
              ParamType.bool,
            ),
            notif100P: params.getParam(
              'notif100P',
              ParamType.bool,
            ),
            soldeC: params.getParam(
              'soldeC',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: WalletListWidget.routeName,
          path: WalletListWidget.routePath,
          builder: (context, params) => WalletListWidget(),
        ),
        FFRoute(
          name: ShowRevenuWidget.routeName,
          path: ShowRevenuWidget.routePath,
          builder: (context, params) => ShowRevenuWidget(
            montantP: params.getParam(
              'montantP',
              ParamType.double,
            ),
            typeP: params.getParam(
              'typeP',
              ParamType.String,
            ),
            categorieP: params.getParam(
              'categorieP',
              ParamType.String,
            ),
            descriptionP: params.getParam(
              'descriptionP',
              ParamType.String,
            ),
            dateP: params.getParam(
              'dateP',
              ParamType.DateTime,
            ),
            methodeP: params.getParam(
              'methodeP',
              ParamType.String,
            ),
            localisationP: params.getParam(
              'localisationP',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AddRevenuWidget.routeName,
          path: AddRevenuWidget.routePath,
          builder: (context, params) => AddRevenuWidget(
            categorieSelected: params.getParam(
              'categorieSelected',
              ParamType.String,
            ),
            walletParam: params.getParam(
              'walletParam',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Wallet'],
            ),
            detectedCategorie: params.getParam(
              'detectedCategorie',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EditRevenuWidget.routeName,
          path: EditRevenuWidget.routePath,
          builder: (context, params) => EditRevenuWidget(
            montantP: params.getParam(
              'montantP',
              ParamType.double,
            ),
            categorieP: params.getParam(
              'categorieP',
              ParamType.String,
            ),
            methodeP: params.getParam(
              'methodeP',
              ParamType.String,
            ),
            typeP: params.getParam(
              'typeP',
              ParamType.String,
            ),
            descriptionP: params.getParam(
              'descriptionP',
              ParamType.String,
            ),
            locationP: params.getParam(
              'locationP',
              ParamType.String,
            ),
            dateP: params.getParam(
              'dateP',
              ParamType.DateTime,
            ),
            renvenuRF: params.getParam(
              'renvenuRF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Transaction'],
            ),
            transactionParam: params.getParam(
              'transactionParam',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Transaction'],
            ),
            walletParam: params.getParam(
              'walletParam',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Wallet'],
            ),
            oldType: params.getParam(
              'oldType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EditWalletWidget.routeName,
          path: EditWalletWidget.routePath,
          builder: (context, params) => EditWalletWidget(
            nomWalletP: params.getParam(
              'nomWalletP',
              ParamType.String,
            ),
            soldeP: params.getParam(
              'soldeP',
              ParamType.double,
            ),
            limiteP: params.getParam(
              'limiteP',
              ParamType.double,
            ),
            depenseP: params.getParam(
              'depenseP',
              ParamType.double,
            ),
            revenuP: params.getParam(
              'revenuP',
              ParamType.double,
            ),
            objectifP: params.getParam(
              'objectifP',
              ParamType.double,
            ),
            welletRp: params.getParam(
              'welletRp',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Wallet'],
            ),
          ),
        ),
        FFRoute(
          name: DashboardinvestmentsWidget.routeName,
          path: DashboardinvestmentsWidget.routePath,
          builder: (context, params) => DashboardinvestmentsWidget(),
        ),
        FFRoute(
          name: BitcoinPageWidget.routeName,
          path: BitcoinPageWidget.routePath,
          builder: (context, params) => BitcoinPageWidget(),
        ),
        FFRoute(
          name: SmartRecommendationPageWidget.routeName,
          path: SmartRecommendationPageWidget.routePath,
          builder: (context, params) => SmartRecommendationPageWidget(
            investissementRef: params.getParam(
              'investissementRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['investissements'],
            ),
          ),
        ),
        FFRoute(
          name: InvdetailsWidget.routeName,
          path: InvdetailsWidget.routePath,
          builder: (context, params) => InvdetailsWidget(
            invedef: params.getParam(
              'invedef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['investissements'],
            ),
          ),
        ),
        FFRoute(
          name: PremiumVRificationPageWidget.routeName,
          path: PremiumVRificationPageWidget.routePath,
          builder: (context, params) => PremiumVRificationPageWidget(
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
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
            return '/aUTHOnboarding2';
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
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
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
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
