import 'package:flutter/material.dart';

class Textfieldwidget extends StatelessWidget {
  final TextEditingController controller;
  final String placeholderText;
  final bool obscureText;
  final IconData? icon;

  const Textfieldwidget({
    super.key,
    required this.controller,
    required this.placeholderText,
    this.obscureText = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: placeholderText,
          labelStyle: const TextStyle(color: Colors.grey),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 109, 78, 1)),
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          suffixIcon: icon != null
              ? IconButton(
                  onPressed: () {
                    controller.text = controller.text; // to toggle obscureText
                  },
                  icon: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
