
class Petinfomodel{
  final String petname;
  final double petage;
  final String pettype;
  final String petbreed;
  final String petgender;
  final String symptoms;
  final String behaviour;

  const Petinfomodel({
    required this.pettype,
    required this.petbreed,
    required this.petgender,
    required this.symptoms,
    required this.behaviour,
    required this.petage,
    required this.petname,
  });


  factory Petinfomodel.fromJson(Map<String,dynamic>json)=>Petinfomodel(
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
