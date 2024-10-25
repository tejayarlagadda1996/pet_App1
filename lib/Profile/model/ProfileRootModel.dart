import 'package:flutter/material.dart';

class ProfileRootModel {
  String icon;
  String title;
  VoidCallback onTap;
  ProfileRootModel({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}
