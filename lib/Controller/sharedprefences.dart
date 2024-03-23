import 'package:applicationtutorial/pageview.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screen/screen.dart';

class Memory{
  RxBool loading = true.obs;
  Future<void>write_uid()async{
    loading.value = false;
    final prefs = await SharedPreferences.getInstance();
    final uid = FirebaseAuth.instance.currentUser?.uid;
    prefs.setString("UID", uid.toString());
    loading.value = true;
  }

  Future<void>read_uid()async{
    loading.value = false;
    final prefs = await SharedPreferences.getInstance();
    final String? uid = prefs.getString("UID");
    if (uid != null && FirebaseAuth.instance.currentUser!.emailVerified){
      Get.to(PAGEVIEW());
    }
    loading.value = true;
  }
  Future<void>delete_memory()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("UID");
  }

}
