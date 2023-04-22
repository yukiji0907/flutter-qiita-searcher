// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $searchRoute,
    ];

RouteBase get $searchRoute => GoRouteData.$route(
      path: '/',
      factory: $SearchRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'article_list/:searchWord',
          factory: $ArticleListRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'article/:title/:url',
              factory: $ArticleRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $ArticleListRouteExtension on ArticleListRoute {
  static ArticleListRoute _fromState(GoRouterState state) => ArticleListRoute(
        state.params['searchWord']!,
      );

  String get location => GoRouteData.$location(
        '/article_list/${Uri.encodeComponent(searchWord)}',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $ArticleRouteExtension on ArticleRoute {
  static ArticleRoute _fromState(GoRouterState state) => ArticleRoute(
        state.params['title']!,
        state.params['url']!,
        state.params['searchWord']!,
      );

  String get location => GoRouteData.$location(
        '/article_list/${Uri.encodeComponent(searchWord)}/article/${Uri.encodeComponent(title)}/${Uri.encodeComponent(url)}',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'c9ea91de790dd67b3bf2a82562022e49e09905b9';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
