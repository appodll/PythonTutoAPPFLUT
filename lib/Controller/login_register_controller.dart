import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  Rx<TextEditingController> email_login = TextEditingController().obs;
  Rx<TextEditingController> password_login = TextEditingController().obs;
  Rx<TextEditingController> email_register = TextEditingController().obs;
  Rx<TextEditingController> pasword_register = TextEditingController().obs;
  Rx<TextEditingController> name_register = TextEditingController().obs;


}