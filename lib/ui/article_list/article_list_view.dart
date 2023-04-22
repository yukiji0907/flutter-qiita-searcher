import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_searcher/model/article_items.dart';
import 'package:qiita_searcher/ui/widget/async_value_widget.dart';
import 'package:qiita_searcher/util/router.dart';

class ArticleListView extends ConsumerWidget {
  const ArticleListView(this.searchWord, {super.key});

  final String searchWord;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleItems =
        ref.watch(articleItemsProvider(searchWord: searchWord));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qiita"),
      ),
      body: AsyncValueWidget(
          asyncValue: articleItems,
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final articleItem = data[index];
                  final iconUrl = articleItem.user.profileImageUrl;
                  return ListTile(
                    leading: (iconUrl != null && iconUrl != "")
                        ? CircleAvatar(
                            backgroundImage: NetworkImage(iconUrl),
                          )
                        : const CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                    title: Text(articleItem.title),
                    onTap: () {
                      return ArticleRoute(
                              articleItem.title, articleItem.url, searchWord)
                          .go(context);
                    },
                  );
                });
          }),
    );
  }
}
