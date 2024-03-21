import 'package:applicationtutorial/Auth/missions_auth.dart';
import 'package:applicationtutorial/login_register/login_screen.dart';
import 'package:applicationtutorial/pageview.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../screen/missions1.dart';
import '../screen/missions2.dart';
import '../screen/missions3.dart';
import '../screen/missions4.dart';
import '../screen/missions5.dart';
import '../screen/missions6.dart';
import '../screen/missions7.dart';
import '../screen/missions8.dart';
import '../screen/screen.dart';


class DataController extends GetxController {
  
  RxBool loading = true.obs;
  RxBool loading2 = true.obs;

  var color = Colors.green.obs;
  var color2 = Colors.green.obs;
  var color3 = Colors.green.obs;
  var color4 = Colors.green.obs;
  var color5 = Colors.green.obs;
  var color6 = Colors.green.obs;
  var color7 = Colors.green.obs;
  var color8 = Colors.green.obs;
  var ilerleme_count = "0%".obs;
  var page_cont = 15.obs;
  var page_cont2 = 10.obs;
  var page_cont3 = 10.obs;
  var decaration = TextDecoration.none.obs;
  var button2 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status'] == 'check') {
          Get.snackbar("OPS", "Görev 1 bitirmeden başlayamassın..");
        } else {
         Get.to(MISSIONS2());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
  var button3 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status2'] == 'check') {
          Get.snackbar("OPS", "Görev 2 bitirmeden başlayamassın..");
        } else {
          Get.to(MISSIONS3());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
      var button4 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status3'] == 'check') {
          Get.snackbar("OPS", "Görev 3 bitirmeden başlayamassın..");
        } else {
         Get.to(MISSIONS4());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
      var button5 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status4'] == 'check') {
          Get.snackbar("OPS", "Görev 4 bitirmeden başlayamassın..");
        } else {
         Get.to(MISSIONS5());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
      var button6 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status5'] == 'check') {
          Get.snackbar("OPS", "Görev 5 bitirmeden başlayamassın..");
        } else {
         Get.to(MISSIONS6());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
      var button7 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status6'] == 'check') {
          Get.snackbar("OPS", "Görev 6 bitirmeden başlayamassın..");
        } else {
         Get.to(MISSIONS7());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;

      var button8 = IconButton(
      onPressed: () async {
        final usercollection = await FirebaseFirestore.instance
            .collection('users-missions')
            .doc(FirebaseAuth.instance.currentUser?.uid);
        DocumentSnapshot doc = await usercollection.get();
        final data = doc.data() as Map<String, dynamic>;

        if (data['status7'] == 'check') {
          Get.snackbar("OPS", "Görev 7 bitirmeden başlayamassın..");
        } else {
         Get.to(MISSIONS8());
        }
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
  var button = IconButton(
      onPressed: () {
        Get.to(MISSIONS1());
      },
      icon: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
      )).obs;
  Rx<FloatingActionButton> floatingbutton = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update();
      await DataController().check();
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
      await MissionsServ().update2();
      await DataController().check();
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
      await MissionsServ().update3();
      await DataController().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;

  Rx<FloatingActionButton> floatingbutton4 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update4();
      await DataController().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;

  Rx<FloatingActionButton> floatingbutton5 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update5();
      await DataController().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;

  Rx<FloatingActionButton> floatingbutton6 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update6();
      await DataController().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;

  Rx<FloatingActionButton> floatingbutton7 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update7();
      await DataController().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;

  Rx<FloatingActionButton> floatingbutton8 = FloatingActionButton(
    backgroundColor: Color.fromARGB(171, 0, 155, 245),
    onPressed: () async {
      await MissionsServ().update8();
      await DataController().check();
      Get.to(PAGEVIEW());
    },
    child: Text(
      "Tamamlandı",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ).obs;

  //--------------------------A------------------------------------//


  Future<void> check() async {
    final usercollection = await FirebaseFirestore.instance
        .collection('users-missions')
        .doc(FirebaseAuth.instance.currentUser?.uid);
    DocumentSnapshot doc = await usercollection.get();
    final data = doc.data() as Map<String, dynamic>;
    if (data == Null){
      Get.to(LOGIN());
    }

    if (data['status'] == 'complete') {
      ilerleme_count.value = "12.5%";
      color.value = Colors.red;
      button.value = IconButton(
          onPressed: () {
            Get.to(MISSIONS1());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
      floatingbutton.value = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }if (data['status2'] == 'complete') {
      ilerleme_count.value = "25%";
      color2.value = Colors.red;
      button2.value = IconButton(
          onPressed: () {
            Get.to(MISSIONS2());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
      floatingbutton2.value = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }if (data['status3'] == 'complete') {
      ilerleme_count.value = "37.5%";
      color3.value = Colors.red;
      button3.value = IconButton(
          onPressed: () {
           Get.to(MISSIONS3());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
      floatingbutton3.value = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }if (data['status4'] == 'complete') {
      ilerleme_count.value = "50%";
      color4.value = Colors.red;
      button4.value = IconButton(
          onPressed: () {
           Get.to(MISSIONS4());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
      floatingbutton4.value = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }if (data['status5'] == 'complete') {
      ilerleme_count.value = "62.5%";
      color5.value = Colors.red;
      button5.value = IconButton(
          onPressed: () {
           Get.to(MISSIONS5());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
      floatingbutton5.value = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }if (data['status6'] == 'complete') {
      ilerleme_count.value = "75%";
      color6.value = Colors.red;
      button6.value = IconButton(
          onPressed: () {
           Get.to(MISSIONS6());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
      floatingbutton6.value = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }if (data['status7'] == 'complete') {
      ilerleme_count.value = "87.5%";
      color7.value = Colors.red;
      button7.value = IconButton(
          onPressed: () {
           Get.to(MISSIONS7());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
      floatingbutton7.value = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }if (data['status8'] == 'complete') {
      decaration.value = TextDecoration.lineThrough;
      ilerleme_count.value = "100%";
      color8.value = Colors.red;
      button8.value = IconButton(
          onPressed: () {
           Get.to(MISSIONS8());
          },
          icon: Icon(
            Icons.stop_rounded,
            color: Colors.white,
          ));
      floatingbutton8.value = FloatingActionButton(
        backgroundColor: Color.fromARGB(134, 42, 251, 0),
        onPressed: () async {
          Get.to(PAGEVIEW());
        },
        child: Text(
          "Ana ekrana dön",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }
  }
}
