import 'dart:convert';

import 'package:http/http.dart';
import 'package:qiita_searcher/model/entity/article_item.dart';
import 'package:qiita_searcher/util/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_items.g.dart';

@riverpod
Future<List<ArticleItem>> articleItems(ArticleItemsRef ref,
    {required String searchWord}) async {
  final url =
      "https://qiita.com/api/v2/items?query=$searchWord&page=1&per_page=10";
  final Response result = await ref.watch(httpClientProvider).get(
        Uri.parse(
          url,
        ),
      );
  if (result.statusCode == 200) {
    final List<dynamic> jsonArray = json.decode(result.body);
    return jsonArray.map((json) => ArticleItem.fromJson(json)).toList();
  } else {
    throw Exception("記事の取得に失敗");
  }
}
