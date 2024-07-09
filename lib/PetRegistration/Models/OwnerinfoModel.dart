class OwnerDetails {
  final String ownername;
  final String gender;
  final String email;
  final String aboutowner;
  final String phonenumber;

  const OwnerDetails({
    required this.gender,
    required this.email,
    required this.ownername,
    required this.aboutowner,
    required this.phonenumber
  });

  factory OwnerDetails.fromJson(Map<String, dynamic> json) => OwnerDetails(
        gender: json['ownergender'],
        email: json['email'],
        ownername: json['ownername'],
        aboutowner: json['aboutowner'],
        phonenumber: json['ownermobile']
      );

  Map<String,dynamic> toJson()=>{
    'ownergender':gender,
    'email':email,
    'ownername':ownername,
    'aboutowner':aboutowner,
    'ownermobile':phonenumber,
  };
}
