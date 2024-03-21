import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/screen2_auth.dart';

class MISSIONS23 extends StatelessWidget {
  const MISSIONS23({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController2());
    return Scaffold(
        floatingActionButton:
            Container(width: 250, child: _ctrl.floatingbutton3.value),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        body: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "lib/AssetImage/15d3fda386f9b643ca46166282d4fe00.jpg"),
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
                            "For Döngüsü Nedir? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Python for döngülerini bir eleman grubundaki (list, tuple, dictionary, set ya da string) her bir elemana ulaşmak için kullanırız.",
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
                            height: 135,
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
                                        "a=[1,2,3]",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "for i in a:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(i)",
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
                                    Text("1",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("2",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("3",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
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
                          "For döngüsü ile sayilar listesi üzerindeki her bir elemana ulaşarak sayi değişkeni içerisine kopyalıyoruz ve ulaştığımız her bir sayı print(sayi) ile ekrana yazdırılır.",
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
                          "Tuple örnek versek:",
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
                            height: 155,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 310),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "a=[(1,2),(2,3)]",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "for a,b in a:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(a,b)",
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
                                    Text("1 2",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("2 3",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
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
                          "String örnek versek:",
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
                            height: 195,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 310),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "name = 'Xanish'",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "for i in name:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "    print(i)",
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
                                    Text("X",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("a",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("n",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("i",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("s",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("h",
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
                          "Dictionary örnek versek:",
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
                            height: 155,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 350),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "a={b:4,c:6}",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "for key,val in a.items():",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(key,val)",
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
                                    Text("b 4",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("c 6",
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
                            "Range Fonksiyonu",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Peki belli sayıdaki tekrarlayan işlemleri for döngüsü ile nasıl yapacağız?",
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
                            height: 135,
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
                                        "a=[1,2,3]",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "for i in a:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(i)",
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
                                    Text("1",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("2",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("3",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
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
                          "Bu şekilde ekrana 3 kere rakamları yazdırmak istiyorsak ve elimizde 3 elemanlı bir liste varsa işimizi hallederiz ancak 3 kere değil 3000 kere yazdırmak istersek bu durumda 3000 elemanlı bir listeyi nereden bulacağız ?",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "İşte burada range fonksiyonu imdadımıza yetişir ve istediğimiz eleman sayısına sahip bir listeyi bize hazırlar.",
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
                          "Range fonksiyonu ile for döngüsünün dönme sayısı kadar tekrarlayan işlemler yapabiliriz.",
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
                            height: 135,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 65, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(right: Get.width - 320),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "for i in range(5):",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(i)",
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
                                    Text("1",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("2",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("3",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white)),
                                    Text("4",
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
                          "Bu şekilde ekrana 0-5 arasındaki tüm sayılar yazdırılır. 5 dahil değil.",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
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
