import 'package:flutter/material.dart';

extension margin on Widget {
  Widget paddingSymmetric({double vartic = 0, double horizon = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vartic, horizontal: horizon),
      child: this,
    );
  }

  Widget paddingAll(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Widget paddingOnly({
    double left = 0,
    double top = 0,
    double bottom = 0,
    double right = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        bottom: bottom,
        right: right,
      ),
      child: this,
    );
  }
}
