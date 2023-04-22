import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:qiita_searcher/ui/article/article_view.dart';
import 'package:qiita_searcher/ui/article_list/article_list_view.dart';
import 'package:qiita_searcher/ui/search/search_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) => GoRouter(
      routes: $appRoutes,
      debugLogDiagnostics: kDebugMode,
    );

@TypedGoRoute<SearchRoute>(
  path: '/',
  routes: [
    TypedGoRoute<ArticleListRoute>(
      path: 'article_list/:searchWord',
      routes: [
        TypedGoRoute<ArticleRoute>(path: 'article/:title/:url'),
      ],
    ),
  ],
)
class SearchRoute extends GoRouteData {
  const SearchRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const SearchView();
}

class ArticleListRoute extends GoRouteData {
  const ArticleListRoute(this.searchWord);

  final String searchWord;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ArticleListView(searchWord);
}

class ArticleRoute extends GoRouteData {
  const ArticleRoute(this.title, this.url, this.searchWord);

  final String searchWord;
  final String title;
  final String url;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ArticleView(title, url);
}
