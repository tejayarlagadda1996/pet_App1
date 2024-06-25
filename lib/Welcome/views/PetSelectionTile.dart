import 'package:flutter/material.dart';

class PetSelectionTile extends StatelessWidget {
  final String image;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const PetSelectionTile({
    super.key,
    required this.image,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),
        margin: isSelected ? const EdgeInsets.all(0) : const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromRGBO(255, 239, 230, 1),
          border: Border.all(
            color: isSelected
                ? const Color.fromRGBO(237, 109, 78, 1)
                : Colors.transparent,
            width: isSelected ? 3 : 1,
          ),
        ),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(width: 10),
            Text(label),
          ],
        ),
      ),
    );
  }
}
