import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/views/Page2.dart';

class MyController extends GetxController{
  final person=PersonData(name:"Muneeb",age:15).obs;
  void ConvertUpperCase(){
    person.update((person){
      person?.name = person.name.toString().toUpperCase();});
  }
}