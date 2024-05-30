import 'package:flutter/material.dart';

enum DynamicTextfieldActionType { text, dropdown, number }

class DynamicTextFieldModel {
  String placeholderText;
  IconData? icon;
  DynamicTextfieldActionType actionType;
  InputBorder? enabledBorder;
  InputBorder? focusedBorder;
  final bool obscureText;


DynamicTextFieldModel({
  required this.placeholderText,
  required this.obscureText,
      this.icon,
      required this.actionType,
      required this.enabledBorder,
      required this.focusedBorder
});

}