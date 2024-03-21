import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/screen2_auth.dart';

class MISSIONS22 extends StatelessWidget {
  const MISSIONS22({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController2());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton2.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/AssetImage/91332fd7343be5dc4bde58930b8db175.jpg"), fit: BoxFit.cover)
        ,
        ),
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
                            "While Döngüsü Nedir? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "While döngülerinde belirttiğimiz bir koşul doğru olduğu sürece while bloğu içerisinde tanımladığımız kod satırlarını tekrarlatabiliriz.",
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
                                        "i = 1",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "while i < 5:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "  print(i)",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   i+=1",
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
                          "Belirttiğimiz koşul i' nin 5 den küçük olması ve bu koşul devam ettiği sürece (True) ekrana i değeri yazdırılmaya devam eder. Ancak burada dikkat etmemiz gereken her adımda i değerini değiştirmemiz gerektiği aksi halde sonsuz bir döngüye gireriz. Dolayısıyla i değeri ekrana yazdırıldıktan sonra i' nin değerini 1 arttırmamız gerekiyor. i' nin değeri 5' e eşit olduğunda while koşulu bize False değer döndürür ve döngüden çıkılır.",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: Get.width - 350),
                          child: Text(
                            "Break ve Continue",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "'break' komutu döngüyü sonlandırır, 'continue' ise döngünün o turunu sonlandırır ve bir sonraki turdan devam eder.",
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
                                        "x = 0",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "while i < 5:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "  x+=1",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   if x ==2: break",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(x)",
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
                                    Text("1",
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
                          "Peki aynı örnekte break yerine continue yazarsak ne olur ?",
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
                                        "x = 0",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "while i < 5:",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "  x+=1",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   if x ==2: continue",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "   print(x)",
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
                                    Text("1",
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
                       
                    
                    ],
                  ),
                ),
              ),
            ),
          ),
      )
    );
  }
}