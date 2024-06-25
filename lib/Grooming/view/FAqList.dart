import 'package:flutter/material.dart';
import 'package:pet_app/Grooming/view/FAQ_widget.dart';

class Faqlist extends StatelessWidget {
  final List<FAQ> faqs = [
    FAQ(question: 'Q: Loreum Ipsum a content place holder?', answer: 'A: Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.'),
    FAQ(question: 'How to use Flutter?', answer: 'You can use Flutter to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.'),
    FAQ(question: 'Why choose Flutter?', answer: 'Flutter enables fast development with a rich set of pre-designed widgets, hot reload, and a strong community.'),
  ];
  Faqlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:faqs.map((faq)=>FaqWidget(faq: faq)).toList(),
    );
  }
}

class FAQ {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});
}