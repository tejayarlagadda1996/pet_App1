enum Producttype{products,packages,labtest,doctor}

class Cart{
  final Producttype? producttype;
  Producttype? currenttype;

  Cart({
    required this.producttype
  });
}