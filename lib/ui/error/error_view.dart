import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorView extends ConsumerWidget {
  const ErrorView(this.provider, {super.key});

  final AutoDisposeFutureProvider? provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
        onPressed: () {
          ref.invalidate(provider!);
        },
        child: const Text(
          "再試行",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
