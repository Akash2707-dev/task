import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

// A provider that manages the background color.
final backgroundColorProvider = StateNotifierProvider<BackgroundColorNotifier, Color>((ref) {
  return BackgroundColorNotifier();
});

class BackgroundColorNotifier extends StateNotifier<Color> {
  BackgroundColorNotifier() : super(Colors.white);

  void changeColor() {
    // Generate a random color
    state = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}
