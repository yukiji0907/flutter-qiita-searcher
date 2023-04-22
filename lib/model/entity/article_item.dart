import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_searcher/model/entity/user.dart';

part 'article_item.freezed.dart';
part 'article_item.g.dart';

@freezed
class ArticleItem with _$ArticleItem {
  factory ArticleItem({
    required User user,
    required String url,
    required String title,
    @Default("") String? body,
  }) = _ArticleItem;
  ArticleItem._();

  factory ArticleItem.fromJson(Map<String, dynamic> json) =>
      _$ArticleItemFromJson(json);
}
