import 'package:flutter/material.dart';

enum DynamicTextfieldActionType { text, dropdown, number, multiline }

class DynamicTextFieldModel {
  String placeholderText;
  IconData? icon;
  DynamicTextfieldActionType actionType;
  InputBorder? enabledBorder;
  InputBorder? focusedBorder;
  bool obscureText;
  List<String>? dropdownItems;

  DynamicTextFieldModel(
      {required this.placeholderText,
      required this.obscureText,
      this.icon,
      this.dropdownItems,
      required this.actionType,
      this.enabledBorder,
      this.focusedBorder
    });
}

