import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qiita_searcher/ui/error/error_view.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget(
      {super.key, required this.asyncValue, this.provider, required this.data});
  final AsyncValue<T> asyncValue;
  final AutoDisposeFutureProvider? provider;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: data,
      error: (e, _) {
        debugPrint("async value widget error：$e");
        return ErrorView(provider);
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
