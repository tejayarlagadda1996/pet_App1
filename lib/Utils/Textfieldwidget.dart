import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String placeholderText;
  final bool obscureText;
  final IconData? icon;
  final VoidCallback? onIconTap;
  final TextInputType inputType;
  final void Function(String)? onChanged;

  const TextfieldWidget({
    super.key,
    required this.controller,
    required this.placeholderText,
    this.obscureText = false,
    this.icon,
    this.onIconTap,
    required this.inputType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        obscureText: obscureText,
        keyboardType: inputType,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: placeholderText,
          labelStyle: const TextStyle(color: Colors.grey),
          floatingLabelStyle: const TextStyle(
            color: Color.fromRGBO(69, 82, 203, 1),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Color.fromRGBO(69, 82, 203, 1),
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1),
          suffixIcon: icon != null
              ? IconButton(
                  onPressed: onIconTap,
                  icon: Icon(icon),
                )
              : null,
        ),
      ),
    );
  }
}
