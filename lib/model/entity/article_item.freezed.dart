// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleItem _$ArticleItemFromJson(Map<String, dynamic> json) {
  return _ArticleItem.fromJson(json);
}

/// @nodoc
mixin _$ArticleItem {
  User get user => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleItemCopyWith<ArticleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleItemCopyWith<$Res> {
  factory $ArticleItemCopyWith(
          ArticleItem value, $Res Function(ArticleItem) then) =
      _$ArticleItemCopyWithImpl<$Res, ArticleItem>;
  @useResult
  $Res call({User user, String url, String title, String? body});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ArticleItemCopyWithImpl<$Res, $Val extends ArticleItem>
    implements $ArticleItemCopyWith<$Res> {
  _$ArticleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? url = null,
    Object? title = null,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleItemCopyWith<$Res>
    implements $ArticleItemCopyWith<$Res> {
  factory _$$_ArticleItemCopyWith(
          _$_ArticleItem value, $Res Function(_$_ArticleItem) then) =
      __$$_ArticleItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String url, String title, String? body});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ArticleItemCopyWithImpl<$Res>
    extends _$ArticleItemCopyWithImpl<$Res, _$_ArticleItem>
    implements _$$_ArticleItemCopyWith<$Res> {
  __$$_ArticleItemCopyWithImpl(
      _$_ArticleItem _value, $Res Function(_$_ArticleItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? url = null,
    Object? title = null,
    Object? body = freezed,
  }) {
    return _then(_$_ArticleItem(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleItem extends _ArticleItem {
  _$_ArticleItem(
      {required this.user,
      required this.url,
      required this.title,
      this.body = ""})
      : super._();

  factory _$_ArticleItem.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleItemFromJson(json);

  @override
  final User user;
  @override
  final String url;
  @override
  final String title;
  @override
  @JsonKey()
  final String? body;

  @override
  String toString() {
    return 'ArticleItem(user: $user, url: $url, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleItem &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, url, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleItemCopyWith<_$_ArticleItem> get copyWith =>
      __$$_ArticleItemCopyWithImpl<_$_ArticleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleItemToJson(
      this,
    );
  }
}

abstract class _ArticleItem extends ArticleItem {
  factory _ArticleItem(
      {required final User user,
      required final String url,
      required final String title,
      final String? body}) = _$_ArticleItem;
  _ArticleItem._() : super._();

  factory _ArticleItem.fromJson(Map<String, dynamic> json) =
      _$_ArticleItem.fromJson;

  @override
  User get user;
  @override
  String get url;
  @override
  String get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleItemCopyWith<_$_ArticleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
