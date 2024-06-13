import 'package:flutter/material.dart';
import 'package:pet_app/SymptomTreatment/views/SymptomTreatmentRoot.dart';

class Symptoms extends StatelessWidget {
  final List<String> labels;
  final List<String> selectedLabels;
  final Function(String) onToggleLabel;

  const Symptoms({
    super.key,
    required this.labels,
    required this.selectedLabels,
    required this.onToggleLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: labels.map((label) {
              final isSelected = selectedLabels.contains(label);
              return GestureDetector(
                onTap: () => onToggleLabel(label),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 239, 230, 1),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: isSelected
                          ? const Color.fromRGBO(237, 109, 78, 1)
                          : Colors.transparent,
                      width: 1.2,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: isSelected
                          ? const Color.fromRGBO(237, 109, 78, 1)
                          : Colors.black,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          child: ElevatedButton(
            onPressed: () {
              void onPressedFunction() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SymptomTreatmentRoot(selectedLabels: selectedLabels),
                  ),
                );
              }

              onPressedFunction();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(237, 109, 78, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Proceed with Symptoms",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          color: const Color.fromRGBO(255, 248, 247, 1),
          child: const SizedBox(
            height: 8,
            child: Center(),
          ),
        ),
      ],
    );
  }
}
