import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:qiita_searcher/app.dart';

void main() {
  Intl.defaultLocale = 'ja';
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
