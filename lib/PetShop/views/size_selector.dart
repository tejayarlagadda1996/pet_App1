import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({
    super.key,
    required this.productSizes,
  });
  final List<String> productSizes;

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

// Add Functionalities
class _SizeSelectorState extends State<SizeSelector> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Select Size",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(widget.productSizes.length, (index) {
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
                    color: const Color.fromRGBO(255, 239, 230, 1),
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(
                      color: _selectedIndex == index
                          ? const Color.fromRGBO(237, 109, 78, 1)
                          : const Color.fromRGBO(255, 239, 230, 1),
                      width: _selectedIndex == index
                          ? 1
                          : 0,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    widget.productSizes[index],
                    style: TextStyle(
                      color: _selectedIndex == index
                          ? const Color.fromRGBO(237, 109, 78, 1)
                          : Color.fromARGB(255, 59, 59, 59),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
