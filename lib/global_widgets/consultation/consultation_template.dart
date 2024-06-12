import 'package:flutter/material.dart';
import 'package:pet_app/global_widgets/consultation/consultation_header.dart';

class CommonConsultation extends StatefulWidget {
  const CommonConsultation({
    super.key,
    required this.title,
    required this.subtitle,
    required this.labels,
    required this.showViewAllButton,
  });

  final String title;
  final String subtitle;
  final List<String> labels;
  final bool showViewAllButton;

  @override
  State<CommonConsultation> createState() => _CommonConsultationState();
}

// Add Functionalities for Condition/Symptom/Behaviour
class _CommonConsultationState extends State<CommonConsultation> {
  final Set<int> _selectedIndices = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConsultationHeader(
          title: widget.title,
          subtitle: widget.subtitle,
          onPressed: () {},
          showViewAllButton: widget.showViewAllButton,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(widget.labels.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (_selectedIndices.contains(index)) {
                      _selectedIndices.remove(index);
                    } else {
                      _selectedIndices.add(index);
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 239, 230, 1),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: _selectedIndices.contains(index)
                          ? const Color.fromRGBO(237, 109, 78, 1)
                          : Colors.transparent,
                      width: 1.2,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    widget.labels[index],
                    style: TextStyle(
                      color: _selectedIndices.contains(index)
                          ? const Color.fromRGBO(237, 109, 78, 1)
                          : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
