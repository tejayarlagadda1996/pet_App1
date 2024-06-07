import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({
    super.key,
    required this.labels,
  });
  final List<String> labels;

  @override
  State<Symptoms> createState() => _SymptomsState();
}

// Add Functionalities
class _SymptomsState extends State<Symptoms> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: List.generate(widget.labels.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (_selectedIndex == index) {
                  _selectedIndex = null;
                } else {
                  _selectedIndex = index;
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: _selectedIndex == index
                    ? const Color.fromRGBO(237, 109, 78, 1)
                    : const Color.fromRGBO(255, 239, 230, 1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Text(
                widget.labels[index],
                style: TextStyle(
                  color: _selectedIndex == index ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
