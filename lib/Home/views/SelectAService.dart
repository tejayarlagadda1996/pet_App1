import 'package:flutter/material.dart';
import 'package:pet_app/Home/model/HomedataModel.dart';
import 'package:pet_app/Home/views/HomeServiceTile.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';

class SelectAService extends StatelessWidget {
  const SelectAService({
    super.key,
    required this.popularServices,
  });
  final PopularServices popularServices;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConsultationHeader(
          title: popularServices.labelName??'',
          subtitle: popularServices.labelShortDescription??'',
          onPressedViewAll: () {},
          showViewAllButton: false,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 12,
            spacing: 16,
            children: List.generate(
              popularServices.services!.length,
              (index) {
                final service = popularServices.services?[index];
                return HomeServiceTile(
                  imgUrl: service?.mobileImageUrl??'',
                  name: service?.serviceName??'',
                  onTileTap: (){},
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
