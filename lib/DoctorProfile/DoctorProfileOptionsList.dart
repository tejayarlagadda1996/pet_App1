import 'package:flutter/material.dart';
import 'package:pet_app/DoctorProfile/DoctorProfileOptions.dart';

class DoctorProfileOptionsList extends StatelessWidget {
  const DoctorProfileOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Color.fromRGBO(223, 223, 223, 1),
        ),
        DoctorProfileOptions(
          optionText: 'Specialization',
          onClicked: () {},
        ),
        DoctorProfileOptions(
          optionText: 'Certificates',
          onClicked: () {},
        ),
        DoctorProfileOptions(
          optionText: 'Education',
          onClicked: () {},
        ),
        DoctorProfileOptions(
          optionText: 'Registration',
          onClicked: () {},
        ),
      ],
    );
  }
}
