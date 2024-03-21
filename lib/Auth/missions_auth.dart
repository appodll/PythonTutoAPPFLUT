import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MissionsServ{
  final usercollection_mission = FirebaseFirestore.instance.collection('users-missions');

  Future<void>update()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status" : "complete"
    });
  }
  Future<void>update2()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status2" : "complete"
    });
  }
  Future<void>update3()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status3" : "complete"
    });
  }
  Future<void>update4()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status4" : "complete"
    });
  }
  Future<void>update5()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status5" : "complete"
    });
  }
  Future<void>update6()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status6" : "complete"
    });
  }
  Future<void>update7()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status7" : "complete"
    });
  }
  Future<void> update8()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status8" : "complete"
    });
  }
  Future<void> update21()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status21" : "complete"
    });
  }
  Future<void> update22()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status22" : "complete"
    });
  }
  Future<void> update23()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status23" : "complete"
    });
  }
  Future<void> update31()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status31" : "complete"
    });
  }
  Future<void> update32()async{
    await usercollection_mission.doc(FirebaseAuth.instance.currentUser?.uid).update({
      "status32" : "complete"
    });
  }
}