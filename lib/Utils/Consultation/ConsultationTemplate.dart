import 'package:flutter/material.dart';
import 'package:pet_app/Home/model/HomedataModel.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';

class ConsultationTemplate extends StatefulWidget {
  const ConsultationTemplate({
    super.key,
    required this.labels,
  });
  final List<Conditions> labels;

  @override
  State<ConsultationTemplate> createState() => _ConsultationTemplateState();
}

// Add Functionalities for Condition/Symptom/Behaviour
class _ConsultationTemplateState extends State<ConsultationTemplate> {
  final Set<int> _selectedIndices = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                    widget.labels[index].conditionName!,
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
