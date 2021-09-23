// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({required this.id, required this.icon, required this.destination});

// If there is no destination then it help us
  bool destinationChecker() {
    // ignore: unnecessary_null_comparison
    if (destination != null) {
      return true;
    }
    return false;
  }
}
