import 'package:applicationtutorial/Controller/screen2_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MISSIONS32 extends StatelessWidget {
  const MISSIONS32({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController2());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton32.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "lib/AssetImage/HD-wallpaper-classy-abstract-design-galaxy-geometric-material-pattern.jpg"),
                fit: BoxFit.cover),
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
                            padding: EdgeInsets.only(right: Get.width - 350),
                            child: Text(
                              "Pythonda class yapısı nedir?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Python, nesne tabanlı bir programlama dilidir. Python'da neredeyse her şey bir sınıftır. Bir sınıf (class), kendisinden örnek oluşturulabilen bir nesnedir (object). Bu sınıflara özellik ve yöntemler atanabilir.",
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
                        Container(
                            padding: EdgeInsets.only(right: Get.width - 350),
                            child: Text(
                              "Bir Sınıf Oluşturmak",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Sınıf oluşturmak için class ifadesi kullanılır. Bu ifadeden sonra sınıfın adına yer verilir ve iki nokta üst üste kullanılarak sınıf yapısı yazılmaya başlanır Peki bu sınıfı nasıl nesne olarak oluşturup kullanacağız? Bunun için aşağıdaki örneği inceleyin:",
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
                              width: Get.width - 80,
                              height: 120,
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
                                          "class sinifim:",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "    x = 5",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "c1 = sinifim()",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "print(c1.x)",
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
                                      Text("5",
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
                            padding: EdgeInsets.only(right: Get.width - 350),
                            child: Text(
                              "__init__() Fonksiyonu",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Bundan önceki örnekler bir sınıfın temel bileşenleriydi. Şimdi bahsedilecek olan __init__() fonksiyonu ise sınıfın temel bileşenidir. Nesne oluşturulduğunda ilk olarak bu fonksiyon çalıştırılır.",
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
                              width: Get.width - 40,
                              height: 240,
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
                                          "class Kisi:",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "    def __init__(self,x,y):",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "        self.isim = x",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "        self.soyisim = x",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "c1 = Kisi('Xanish',18)",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "print(c1.isim)",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "print(c1.soyisim)",
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
                                      Text("Xanish",
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.white)),
                                              Text("18",
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
            
      ),
    );
  }
}
