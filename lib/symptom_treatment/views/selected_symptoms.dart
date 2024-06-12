import 'package:flutter/material.dart';

class SelectedSymptoms extends StatefulWidget {
  final List<String> selectedLabels;

  const SelectedSymptoms({super.key, required this.selectedLabels});

  @override
  State<SelectedSymptoms> createState() => _SelectedSymptomsState();
}

class _SelectedSymptomsState extends State<SelectedSymptoms> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Selected Symptoms",
            style: TextStyle(
              color: Color.fromRGBO(26, 25, 25, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          widget.selectedLabels.isEmpty
              ? const Text(
                  "No symptoms selected",
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                )
              : Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children:
                      List.generate(widget.selectedLabels.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 239, 230, 1),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: const Color.fromRGBO(237, 109, 78, 1),
                          width: 1.2,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            widget.selectedLabels[index],
                            style: const TextStyle(
                              color: Color.fromRGBO(237, 109, 78, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.selectedLabels.removeAt(index);
                              });
                            },
                            child: const Icon(
                              Icons.close,
                              size: 16,
                              color: Color.fromRGBO(237, 109, 78, 1),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
        ],
      ),
    );
  }
}
