import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/controller/convertvalue.dart';
import 'Page2.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  MyController myController = Get.put(MyController());
  final person = PersonData(name: "Muneeb", age: 15).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Name is ${myController.person.value.name}")),
            RaisedButton(
              onPressed: () {
                myController.ConvertUpperCase();
              },
              child: Text("Upper Case"),
            ),
          ],
        ),
        // child: Text("${Get.arguments}"),
      ),
    );
  }
}
