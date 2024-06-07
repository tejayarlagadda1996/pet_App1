import 'package:flutter/material.dart';

class Typesofpayment extends StatelessWidget {
  const Typesofpayment({super.key});

  @override
  Widget build(BuildContext context) {
    List<Paymenttype> paymenttypes=const [
      Paymenttype(paymenticon: Icons.credit_card, paymenttype: 'Credit/Debit Card'),
      Paymenttype(paymenticon: Icons.dining, paymenttype: 'netbankong'),
      Paymenttype(paymenticon: Icons.money, paymenttype: 'Cash on Delivery')
    ];
    return Column(
      children: paymenttypes.map((data){
        return Card(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment:MainAxisAlignment.start,children: [Icon(data.paymenticon),const SizedBox(width: 10,), Text(data.paymenttype)],)
          )
        );
      }).toList(),
    );
  }
}

class Paymenttype {
  final IconData paymenticon;
  final String paymenttype;

  const Paymenttype({required this.paymenticon,required this.paymenttype});
}