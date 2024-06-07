class Petinfomodel{
  final String petname;
  final double petage;
  final Pettype pettype;
  final Petgender petgender;

  const Petinfomodel({
    required this.petage,
    required this.petname,
    required this.pettype,
    required this.petgender,
  });
}

enum Pettype{dog,cat,bird,other}
enum Petgender{male,female}
enum Petbreed{a,b,c,d,e}