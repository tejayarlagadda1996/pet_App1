
class PetDetails{
  final String petname;
  final double petage;
  final String pettype;
  final String petbreed;
  final String petgender;
  final List<String> symptoms;
  final List<String> behaviour;

  const PetDetails({
    required this.pettype,
    required this.petbreed,
    required this.petgender,
    required this.symptoms,
    required this.behaviour,
    required this.petage,
    required this.petname,
  });


  factory PetDetails.fromJson(Map<String,dynamic>json)=>PetDetails(
    pettype: json['pettype'],
    petbreed: json['petbreed'],
    petgender: json['petgender'],
    symptoms: json['symptoms'],
    behaviour: json['behaviour'],
    petage: json['petage'],
    petname: json['petname'],
  );  

  Map<String,dynamic> toJson()=>{
    'petname':petname,
    'pettype':pettype,
    'petbreed':petbreed,
    'petgender':petgender,
    'symptoms':symptoms,
    'behaviour':behaviour
  };
}
