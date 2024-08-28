import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/home_provider.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the background color provider
    final backgroundColor = ref.watch(backgroundColorProvider);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Riverpod Background Changer'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Call the method to change the background color
            ref.read(backgroundColorProvider.notifier).changeColor();
          },
          child: Text('Change Background Color'),
        ),
      ),
    );
  }
}
