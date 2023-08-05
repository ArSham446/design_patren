import 'package:design_patren/patrens/abstract_factory.dart';
import 'package:design_patren/patrens/platform_indicator.dart';
import 'package:flutter/material.dart';

class Factory {
  static Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return platformButton(Theme.of(context).platform).build(
      onPressed,
      text,
    );
  }
  static Widget buildIndicator(BuildContext context){
    return platformIndicator(Theme.of(context).platform).build();
  }
}
