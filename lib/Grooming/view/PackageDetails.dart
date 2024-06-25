import 'package:flutter/material.dart';
import 'package:pet_app/Grooming/view/FAqList.dart';

class PackageDetails extends StatelessWidget {
  const PackageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {packageDetails(context);},
      child: const Text('View',style: TextStyle(color: Color.fromRGBO(237, 109, 76, 1)),)
    );
  }
}

void packageDetails(BuildContext context) {

  showModalBottomSheet(
    constraints: const BoxConstraints(maxHeight: double.infinity),
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
                      // child: Image.asset(),
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
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Frequently Asked Questions:-',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Faqlist(),
                  const SizedBox(height: 20),
                  const Center(child: Text('Still in doubt? Talk to Our Experts')),
                  TextButton(onPressed: (){}, child:const Text('Contact Us',style: TextStyle(color: Color.fromRGBO(237, 109, 76, 1)),))
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
