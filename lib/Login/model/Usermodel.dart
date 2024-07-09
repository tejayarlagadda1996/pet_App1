import 'package:pet_app/PetRegistration/Models/OwnerinfoModel.dart';
import 'package:pet_app/PetRegistration/Models/PetinfoModel.dart';

class User {
  final String username;
  final String password;
  final UserDetails userdetails;

  const User({
    required this.username,
    required this.password,
    required this.userdetails,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json['username'],
        password: json['password'],
        userdetails: json['userdetails'],
      );
      
  Map<String,dynamic> toJson()=>{
    'username':username,
    'password':password,
    'userdetails':userdetails
  };
}

class UserDetails {
  final PetDetails petDetails;
  final OwnerDetails ownerdetails;

  const UserDetails({
    required this.petDetails,
    required this.ownerdetails,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        petDetails: json['petDetails'],
        ownerdetails: json['ownerdetails'],
      );

  Map<String,dynamic> toJson()=>{
    "petDetails":petDetails,
    'ownerdetails':ownerdetails
  };
}
