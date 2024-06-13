import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CounterController extends GetxController {
  RxInt counter = 0.obs;
  void decrement() {counter--;}
  void increment(){counter++;}
}

class Counter extends StatelessWidget {
  final CounterController controller=Get.put(CounterController());

  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: controller.decrement, icon: const Icon(Icons.remove)),
        Obx(()=>Text('${controller.counter}')),
        IconButton(onPressed: controller.increment, icon: const Icon(Icons.add))
      ],
    );
  }
}