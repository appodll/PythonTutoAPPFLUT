import 'package:applicationtutorial/pageview.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../login_register/emailverification_page.dart';
import '../screen/screen.dart';

class AuthServ{
  final usercollection = FirebaseFirestore.instance.collection('users');
  final usercollection_mission = FirebaseFirestore.instance.collection('users-missions');
  RxBool loading = true.obs;

  Future<void>singup({required String email, required String name, required String password})async{
    try{
    loading.value = false;
    final UserCredential userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    if (userCredential.user != null && FirebaseAuth.instance.currentUser!.emailVerified == false){

      _register(email: email, name: name, password: password);
      Get.to(EmailVerift());
      await sendemailcode();
      usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).set({
        "status" : "check",
        "status2" : "check",
        "status3" : "check",
        "status4" : "check",
        "status5" : "check",
        "status6" : "check",
        "status7" : "check",
        "status8" : "check",
        "status21" : "check",
        "status22" : "check",
        "status23" : "check",
        "status31" : "check",
        "status32" : "check",
      });

    }
    loading.value = true;
    } on FirebaseAuthException catch(e){
      Get.snackbar("OPS", e.message.toString());
      loading.value = true;
    }
  }

  Future<void> singin({required String email, required String password})async{
    try{
      loading.value = false;
      final UserCredential userCredentialogin = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      if (userCredentialogin != null && FirebaseAuth.instance.currentUser!.emailVerified){
        Get.to(PAGEVIEW());
        
      }if(FirebaseAuth.instance.currentUser!.emailVerified == false){
        Get.snackbar("E-posta adresinizi doğrulayın", "Lütfen e-mailinizi kontrol ediniz");
      }
      loading.value = true;
    }on FirebaseAuthException catch(e){
      Get.snackbar("OPS", e.message.toString());
      loading.value = true;
    }
  }


  Future<void>_register({required String email, required String name, required String password})async{
    await usercollection.doc(FirebaseAuth.instance.currentUser?.uid).set({
      "email" : email,
      "name" : name,
      "pasword" : password,
      "uid" : FirebaseAuth.instance.currentUser?.uid,
    });
  }

  Future<void> sendemailcode()async{

      FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  
}