import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Auth/auth_controller.dart';
import '../Controller/screen2_auth.dart';
import '../Controller/screen_cont.dart';

class MISSIONS21 extends StatelessWidget {
  const MISSIONS21({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController2());
    return Scaffold(
        floatingActionButton:
            Container(width: 250, child: _ctrl.floatingbutton1.value),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/AssetImage/2098197.jpg"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            physics: ScrollPhysics(parent: BouncingScrollPhysics()),
            child: Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Padding(
                padding: EdgeInsets.only(left: 1),
                child: Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.only(right: Get.width - 250),
                          child: Text(
                            "If/Else Nedir? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Programlama diyince hemen hemen herkesin aklına if else diye adlandırdığımız koşul durumları gelir. If else i kullanarak kodumuzda belirli can alıcı kontroller yazabilir ve bu kontrollere göre belirli işlemler yaptırabiliriz. Ucu çok acık, size kalmış... Detaylara inmeden önce burada öğreneceğimiz yeni operatörler var. 'If', koşul belirtme ifadesidir. Python'da matematiksel koşullar belirtirken genelde aşağıdaki işaretler kullanılır:",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Eşittir: a == b",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Eşit değildir: a != b",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Küçüktür: a < b",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Küçük ya da eşittir: a <= b",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Büyüktür: a > b",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Büyük ya da eşittir: a >= b",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Container(
                            width: Get.width - 50,
                            height: 125,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 260),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "a = 10",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "b = 20",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "if b>a:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(b)",
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
                                    Text("20",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: Get.width - 250),
                          child: Text(
                            "Elif Nedir? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Varsayalım ilk koşul(if koşulu) gerçekleşmedi. İkinci bir koşul belirtmek istiyoruz. Bu durumda elif kullanabiliriz:",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Container(
                            width: Get.width - 50,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 260),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "a = 30",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "b = 20",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "if b>a:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(b)",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "elif a>b:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(a)",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
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
                                    Text("30",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: Get.width - 250),
                          child: Text(
                            "Else Nedir? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Önceden belirttiğimiz tüm koşullar gerçekleşmediyse, Python'un ne yapması gerektiğini bu ifadeyi yazarak belirtiriz. Bu ifadeden sonra bir koşul yazılmaz.",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Container(
                            width: Get.width - 50,
                            height: 250,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 270),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "a = 30",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "b = 30",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "if b>a:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(b)",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "elif a>b:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(a)",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "else:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print('Eşit')",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
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
                                    Text("Eşit",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Elif kullanmadan da else kullanabilirsiniz. Bu durumda ilk koşul gerçekleşmediyse else ifadesinde belirtilen durum gerçekleşecektir.",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: Get.width - 370),
                          child: Text(
                            "if ... else Deyiminin Kısaltılmış Hali",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Eğer gerçekleşebilecek iki durum varsa ve bunlar tek satırlık ifadelerse aşağıdaki şekilde if ... else bağlacı kullanılabilir:",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Container(
                            width: Get.width - 50,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 360),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "a = 30",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "b = 20",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "print(a) if a>b else print(b)",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Outputs:",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white)),
                                      Text("30",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: Get.width - 370),
                          child: Text(
                            "'and' Operatörü",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Ve anlamında kullanılır. Birden fazla koşulun gerçekleşme durumunu kontrol eder. Eğer satırda belirtilen tüm koşullar doğru ise kodu çalıştırır.",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Container(
                            width: Get.width - 50,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 360),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "a = 30",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "b = 20",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "c = 55",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "if a > b and c > a:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(true)",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Outputs:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                    Text("true",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: Get.width - 370),
                          child: Text(
                            "'or' Operatörü",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Veya anlamında kullanılır. Belirtilen koşullardan biri doğruysa bile kod çalıştırılır.",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Container(
                            width: Get.width - 50,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 360),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "a = 30",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "b = 20",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "c = 55",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "if a > b or c < a:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(true)",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Outputs:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                    Text("true",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
