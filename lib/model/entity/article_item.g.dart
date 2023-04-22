// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleItem _$$_ArticleItemFromJson(Map<String, dynamic> json) =>
    _$_ArticleItem(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      url: json['url'] as String,
      title: json['title'] as String,
      body: json['body'] as String? ?? "",
    );

Map<String, dynamic> _$$_ArticleItemToJson(_$_ArticleItem instance) =>
    <String, dynamic>{
      'user': instance.user,
      'url': instance.url,
      'title': instance.title,
      'body': instance.body,
    };
