import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformIndicator {
  Widget build();
}

class AndroidIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return const CircularProgressIndicator();
  }
}

class IosIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return const CupertinoActivityIndicator();
  }
}

PlatformIndicator platformIndicator(TargetPlatform platform) {
  switch (platform) {
    case TargetPlatform.android:
      return AndroidIndicator();
    case TargetPlatform.iOS:
      return IosIndicator();
    default:
      return AndroidIndicator();
  }
}
