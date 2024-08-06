import 'package:flutter/material.dart';

/// link : https://medium.easyread.co/3-options-for-creating-responsive-layouts-in-flutter-app-live-demo-68b0c0e955ab
/// responsive layouts by BuildContext Extension
extension Responsive on BuildContext {
  T responsive<T>(
    T defaultValue, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultValue)
        : wd >= 1024
        ? (lg ?? md ?? sm ?? defaultValue)
        : wd >= 768
        ? (md ?? sm ?? defaultValue)
        : wd >= 640
        ? (sm ?? defaultValue)
        : defaultValue;
  }
}