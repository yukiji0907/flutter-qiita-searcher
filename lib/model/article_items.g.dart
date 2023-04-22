// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_items.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articleItemsHash() => r'03d456b7e46ef0c90ba8cd17da2189d51ea56982';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef ArticleItemsRef = AutoDisposeFutureProviderRef<List<ArticleItem>>;

/// See also [articleItems].
@ProviderFor(articleItems)
const articleItemsProvider = ArticleItemsFamily();

/// See also [articleItems].
class ArticleItemsFamily extends Family<AsyncValue<List<ArticleItem>>> {
  /// See also [articleItems].
  const ArticleItemsFamily();

  /// See also [articleItems].
  ArticleItemsProvider call({
    required String searchWord,
  }) {
    return ArticleItemsProvider(
      searchWord: searchWord,
    );
  }

  @override
  ArticleItemsProvider getProviderOverride(
    covariant ArticleItemsProvider provider,
  ) {
    return call(
      searchWord: provider.searchWord,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'articleItemsProvider';
}

/// See also [articleItems].
class ArticleItemsProvider
    extends AutoDisposeFutureProvider<List<ArticleItem>> {
  /// See also [articleItems].
  ArticleItemsProvider({
    required this.searchWord,
  }) : super.internal(
          (ref) => articleItems(
            ref,
            searchWord: searchWord,
          ),
          from: articleItemsProvider,
          name: r'articleItemsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articleItemsHash,
          dependencies: ArticleItemsFamily._dependencies,
          allTransitiveDependencies:
              ArticleItemsFamily._allTransitiveDependencies,
        );

  final String searchWord;

  @override
  bool operator ==(Object other) {
    return other is ArticleItemsProvider && other.searchWord == searchWord;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchWord.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
