import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Profile/ProfileRootController.dart';
import 'package:pet_app/Profile/UserProfile.dart';
import 'package:pet_app/Profile/model/ProfileRootModel.dart';
import 'package:pet_app/Utils/AppTheme.dart';

class ProfileRoot extends StatelessWidget {
  ProfileRoot({super.key});
  final ProfileRootController profileRootController =
      Get.put(ProfileRootController());
  final profileEntries = [
    ProfileRootModel(icon: 'assets/MyPets.png', title: 'My Pets', onTap: () {}),
    ProfileRootModel(
        icon: 'assets/ManageAddresses.png',
        title: 'Manage Addresses',
        onTap: () {}),
    ProfileRootModel(
        icon: 'assets/Change Password.png',
        title: 'Total Orders',
        onTap: () {}),
    ProfileRootModel(
        icon: 'assets/Change Password.png',
        title: 'Change Password',
        onTap: () {}),
    ProfileRootModel(
        icon: 'assets/About us.png', title: 'About Us', onTap: () {}),
    ProfileRootModel(
        icon: 'assets/Invite Friends.png',
        title: 'Invite Friends',
        onTap: () {}),
    ProfileRootModel(icon: 'assets/Help.png', title: 'Help', onTap: () {}),
    ProfileRootModel(icon: 'assets/LogOut.png', title: 'Logout', onTap: () {}),
    ProfileRootModel(
        icon: 'assets/DeleteAccount.png',
        title: 'Delete Account',
        onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    profileRootController.getUserProfile();
    return Scaffold(
      backgroundColor: Apptheme.plaincolor,
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 5,
        surfaceTintColor: Apptheme.white,
        shadowColor: Apptheme.grey.withOpacity(0.6),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => (profileRootController.userprofile.value == null)
                  ? const CircularProgressIndicator()
                  : UserProfile(
                      customerProfile: profileRootController.userprofile.value!,
                    ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Card(
                  color: Apptheme.plaincolor,
                  child: ListTile(
                    leading: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          profileEntries[index].icon,
                          fit: BoxFit.fitWidth,
                        )),
                    title: Text(
                      profileEntries[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: profileEntries[index].onTap,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
