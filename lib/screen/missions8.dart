import 'package:applicationtutorial/Controller/screen_cont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MISSIONS8 extends StatelessWidget {
  const MISSIONS8({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton8.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/AssetImage/wallpaper2you_96751.jpg"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          child: Padding(
            padding: EdgeInsets.only(left: 2),
            child: Container(
              padding: EdgeInsets.only(top: 70),
              margin: EdgeInsets.only(bottom: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 350),
                    child: Text(
                      'Python Dictionary (sözlük) nedir?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Python collection veri tiplerinden olan dictionary yani sözlük veri yapısı key ve value şeklinde verileri saklayabileceğimiz bir veri yapısıdır. Dictionary veri yapısı Json veri yapısına oldukça benzerdir. Dictionary liste elemanlarına key ve value değerlerine göre ulaşıp elemanlar üzerinde güncelleme yapabiliriz.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 90,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 65, 65, 65),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: Get.width - 340),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = {'color' : 'red'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(type(a))",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Outputs:",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("<class 'dict'>",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 350),
                    child: Text(
                      'Dictionary Elemanlarına Erişim',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Dictionary elemanlarının value bilgisine köşeli parantezler içerisine yazdığımız key ile ulaşabiliriz.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 90,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 65, 65, 65),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: Get.width - 340),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = {'color' : 'red'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(a['color'])",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Outputs:",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("'red'",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                Text(
                    'Ayrıca köşeli parantez yerine get() metodunuda kullanabiliriz.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 90,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 65, 65, 65),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: Get.width - 340),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = {'color' : 'red'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(a.get('color'))",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Outputs:",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("'red'",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
               Container(
                    padding: EdgeInsets.only(right: Get.width - 350),
                    child: Text(
                      'Dictionaryden Eleman Silme',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                Text(
                    'pop() metodu ile sözlük veri yapısından belirttiğimiz key bilgisi ile veriyi silebiliriz.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                Text(
                    'Aynı şekilde del komutunu kullanarak da istediğimiz key bilgisiyle veri silebiliriz.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
