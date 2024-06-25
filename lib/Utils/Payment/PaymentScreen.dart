import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  final bool paymentConfirmed;
  final String transactionId;
  final int paymentAmount;
  final String paymentMethod;
  final String paymentDate;

  const PaymentScreen({
    super.key,
    required this.paymentConfirmed,
    required this.transactionId,
    required this.paymentAmount,
    required this.paymentMethod,
    required this.paymentDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: paymentConfirmed
                  ? Image.asset(
                      "assets/payment_confirmed.png",
                      height: MediaQuery.of(context).size.height * 0.35,
                    )
                  : Image.asset(
                      "assets/payment_failed.png",
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
            ),
            const SizedBox(height: 20),
            Text(
              paymentConfirmed ? "Payment Confirmed!" : "Payment Failed",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: paymentConfirmed
                    ? const Color.fromRGBO(11, 83, 81, 1)
                    : const Color.fromARGB(255, 104, 1, 1)
              ),
            ),
            const SizedBox(height: 6),
            Text(
              "Transaction ID : $transactionId",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 12),
            Divider(
              color: Colors.grey[200],
              thickness: 1,
              indent: 15,
            ),
            const SizedBox(height: 12),
            Text(
              paymentConfirmed ? "Amount Paid" : "Amount to be paid",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 2),
            Text(
              "₹$paymentAmount",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: paymentConfirmed
                    ? const Color.fromRGBO(11, 83, 81, 1)
                    : const Color.fromARGB(255, 104, 1, 1)
              ),
            ),
            const SizedBox(height: 14),
            Text(
              paymentConfirmed ? "Using $paymentMethod\non $paymentDate" : "",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// PaymentConfirmed(
//         transactionId: "12345678",
//         paymentConfirmed: true,
//         paymentAmount: 2039,
//         paymentMethod: "HDFC Bank Online Banking",
//         paymentDate: "11th June, 2024",
//       ),
