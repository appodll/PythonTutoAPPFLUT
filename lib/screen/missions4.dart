import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/screen_cont.dart';

class MISSIONS4 extends StatelessWidget {
  const MISSIONS4({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton4.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/AssetImage/670849.jpg'),fit: BoxFit.cover)
        ),
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
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      'Python Bool nedir?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, ),
                    ),
                  ),
                  Text(
                    "Bool (boolean) türü veriler sadece iki bilgi içerebilir: Doğru ya da yanlış. Doğru ya da yanlış verisi programlama dillerinde sıklıkla kullanılır. Python, iki veriyi değerlendirerek ifadenin doğru ya da yanlış olduğunu tespit eder.",
                    style: TextStyle(fontSize: 17, color: Colors.white, ),
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
                              margin: EdgeInsets.only(right: Get.width - 280),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "print(10>9)",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(10<2)",
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
                                Text("True",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                Text("False",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Fonksiyonlar da doğru ya da yanlış değeri döndürebilir. Aşağıdaki örnekte fonksiyon True olarak döndürülmüştür. Buna göre IF bağlacında Evet! yazısı yazdırılacaktır.',
                    style: TextStyle(fontSize: 17, color: Colors.white, ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 10,
                        height: 180,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 65, 65, 65),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: Get.width - 280),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "def fonksiyonum() :",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "   return True",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "if fonksiyonum():",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "   print('Evet!')",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "else:",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "   print('Hayır!')",
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
                                Text("Evet!",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
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
    );
  }
}
