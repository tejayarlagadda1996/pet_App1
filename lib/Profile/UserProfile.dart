import 'package:flutter/material.dart';
import 'package:pet_app/PetRegistration/Models/OwnerinfoModel.dart';
import 'package:pet_app/Utils/AppTheme.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    required this.customerProfile,
  });
  final CustomerProfile customerProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0, -1),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: Image.network('${customerProfile.image}').image,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Apptheme.appthemelite,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Dr. John Doe',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
