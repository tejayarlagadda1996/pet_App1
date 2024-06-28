import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dropdownwidget extends StatelessWidget {
  final RxString selectedValue;
  final List<String> items;
  final String placeholderText;

  const Dropdownwidget({
    super.key,
    required this.selectedValue,
    required this.items,
    required this.placeholderText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Obx(() {
        return DropdownButtonFormField<String>(
          value: selectedValue.value.isEmpty ? null : selectedValue.value,
          onChanged: (String? newValue) {
            if (newValue != null) {
              selectedValue.value = newValue;
            }
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: InputDecoration(
            labelText: placeholderText,
            labelStyle: const TextStyle(color: Colors.grey),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(237, 109, 78, 1)),
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.1),
            contentPadding: const EdgeInsets.all(10),
          ),
        );
      }),
    );
  }
}
