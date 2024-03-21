import 'package:applicationtutorial/Auth/missions_auth.dart';
import 'package:applicationtutorial/screen2/mission1.dart';
import 'package:applicationtutorial/screen3/missions32.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pageview.dart';
import '../screen2/missions2.dart';
import '../screen2/missions3.dart';
import '../screen3/missions31.dart';

class DataController2 extends GetxController {
  RxString ilerleme_count2 = "0%".obs;
  RxString ilerleme_count3 = "0%".obs;

  var decaration = TextDecoration.none.obs;
  var decaration3 = TextDecoration.none.obs;

  var color31 = Colors.green.obs;
  Rx<FloatingActionButton> floatingbutton31 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update31();
      await DataController2().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;
  Rx<FloatingActionButton> floatingbutton32 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update32();
      await DataController2().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;
  
  var button31 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;
        Get.to(MISSIONS31());
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;

  var button32 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status31'] == 'check') {
          Get.snackbar("OPS", "Görev 1 bitirmeden başlayamassın..");
        } else {
          Get.to(MISSIONS32());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;

  var color1 = Colors.green.obs;
  var color2 = Colors.green.obs;
  var color3 = Colors.green.obs;
  var color32 = Colors.green.obs;
  var button3 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status22'] == 'check') {
          Get.snackbar("OPS", "Görev 2 bitirmeden başlayamassın..");
        } else {
          Get.to(MISSIONS23());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
  var button2 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status21'] == 'check') {
          Get.snackbar("OPS", "Görev 1 bitirmeden başlayamassın..");
        } else {
          Get.to(MISSIONS22());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
  var button1 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;
        Get.to(MISSIONS21());
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;

  Rx<FloatingActionButton> floatingbutton1 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update21();
      await DataController2().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;
  Rx<FloatingActionButton> floatingbutton2 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update22();
      await DataController2().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;
  Rx<FloatingActionButton> floatingbutton3 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update23();
      await DataController2().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;

  Future<void> check() async {
    final usercollection = await FirebaseFirestore.instance
        .collection('users-missions')
        .doc(FirebaseAuth.instance.currentUser?.uid);
    DocumentSnapshot doc = await usercollection.get();
    final data = doc.data() as Map<String, dynamic>;
    if (data["status21"] == "complete") {
      ilerleme_count2 = "32%".obs;
      floatingbutton1 = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ).obs;
      color1.value = Colors.red;
      button1.value = IconButton(
          onPressed: () {
            Get.to(MISSIONS21());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
    }
    if (data["status22"] == "complete") {
      ilerleme_count2 = "66%".obs;
      floatingbutton2 = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ).obs;
      color2.value = Colors.red;
      button2.value = IconButton(
          onPressed: () {
            Get.to(MISSIONS22());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
    }
    if (data["status23"] == "complete") {
      decaration = TextDecoration.lineThrough.obs;
      ilerleme_count2 = "100%".obs;
      floatingbutton3 = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ).obs;
      color3.value = Colors.red;
      button3.value = IconButton(
          onPressed: () {
            Get.to(MISSIONS23());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
    }
    if (data["status31"] == 'complete') {
      ilerleme_count3.value = "34%";
      color31.value = Colors.red;
      floatingbutton31 = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ).obs;
      button31.value = IconButton(
          onPressed: () {
            Get.to(MISSIONS31());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
    }
    if (data["status32"] == "complete") {
      ilerleme_count3 = "100%".obs;
      floatingbutton32 = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ).obs;
      color32.value = Colors.red;
      button32.value = IconButton(
          onPressed: () {
            Get.to(MISSIONS32());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
    }
  }
}
