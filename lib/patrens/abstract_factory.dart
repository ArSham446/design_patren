import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformButton {
  PlatformButton(TargetPlatform platform);

  Widget build(VoidCallback onPressed, String text);
}

class AndroidButton implements PlatformButton {
  @override
  Widget build(VoidCallback onPressed, String text) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class IosButton implements PlatformButton {
  @override
  Widget build(VoidCallback onPressed, String text) {
    return CupertinoButton(
      onPressed: onPressed,
      color: CupertinoColors.activeOrange,
      child: Text(text),
    );
  }
}

PlatformButton platformButton(TargetPlatform platform) {
  switch (platform) {
    case TargetPlatform.android:
      return AndroidButton();
    case TargetPlatform.iOS:
      return IosButton();
    default:
      return IosButton();
  }
}
