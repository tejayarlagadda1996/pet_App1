import 'package:flutter/material.dart';
import 'package:pet_app/Home/model/HomedataModel.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';
import 'package:pet_app/Utils/Consultation/ConsultationTemplate.dart';

class ConditionConsultation extends StatelessWidget {
  const ConditionConsultation({
    super.key,
    this.showViewAll = true,
    this.petConditions,
  });
  final PetConditions? petConditions;
  final bool showViewAll;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: petConditions?.labelName ?? "",
          subtitle: petConditions?.labelShortDescription ?? "",
          onPressedViewAll: () {},
          showViewAllButton: showViewAll,
        ),
        ConsultationTemplate(
          labels: petConditions?.conditions ?? [],
        ),
      ],
    );
  }
}
