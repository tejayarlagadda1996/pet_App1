import 'package:flutter/material.dart';
import 'package:pet_app/Grooming/view/FAqList.dart';

void packageDetails(BuildContext context) {

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        expand: false,
        builder: (BuildContext context, ScrollController scrollController) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.all(Radius.circular(8)),
                color: Colors.orange[300],
              ),
              child: ListView(
                controller: scrollController,
                children: <Widget>[
                  ListTile(
                    title: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent
                      ),
                      child: Image.asset(packagedetails.),
                    ),
                    subtitle: const Text('Each Service detail about how its done, What products we use, and time that is suppose to take, we can get the detail from the agency and keep the content here.'),
                  ),
                   ListTile(
                    title: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent
                      ),
                      // child: Image.asset(''),
                    ),
                    subtitle: const Text('Each Service detail about how its done, What products we use, and time that is suppose to take, we can get the detail from the agency and keep the content here.'),
                  ),
                  Faqlist(),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}