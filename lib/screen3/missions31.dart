import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/screen2_auth.dart';

class MISSIONS31 extends StatelessWidget {
  const MISSIONS31({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController2());
    return Scaffold(
      floatingActionButton:
            Container(width: 250, child: _ctrl.floatingbutton31.value),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
            body:  Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("lib/AssetImage/dcf7f59af37c60ac9dd03d3b1c150193.jpg"),fit: BoxFit.cover)
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
                              "Pythonda fonksiyon nedir ve nasıl tanımlanır?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Yazdığımız bir python uygulamasındaki belli bir kod parçasını bir kaç yerde kullanma ihtiyacı duyduğumuzda fonksiyon oluşturmak işlerimizi kolaylaştırır. Böyle durumlarda sürekli kullanacak olduğumuz kod satırlarını fonksiyonlar içine alıp istediğimiz zaman çağırıp çalıştırabiliriz. Örneğin basit bir matematiksel işlem yapacağız ve bir çok yerde bu matematiksel işlemi tekrarlayacağız bu durumda bir fonksiyon oluşturup defalarca kullanabiliriz. Ayrıca işin daha güzel yani Python da hazır bir çok kütüphane var ve bu kütüphaneler içinde önceden oluşturulmuş bir sürü fonksiyon mevcut. Çoğu zaman fonksiyonun içeriğini yazmak yerine hazır olanını kullanabileceğiz. Örneğin gönderdiğimiz bir sayının karakökünü alan sqrt() fonksiyonu. ",
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
                            "Peki gelin Fonksiyon oluşturmaya başlayalım.",
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
                            "Fonksiyon tanımlamak için def komutunu kullanıyoruz.",
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
                                          "def hello():",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "    print('Merhaba')",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "hello()",
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
                                      Text("Merhaba",
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
                            "Gördüğünüz gibi fonksiyon çağrıldığında ekrana Merhaba yazar. Fonksiyonu her çağırdığımızda kodlar tekrar çalıştırılacağından dolayı ekrana Merhaba yazmaya devam edecektir.",
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
                              height: 130,
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
                                          "def hello():",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "    print('Merhaba')",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "hello()",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "hello()",
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
                                      Text("Merhaba",
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.white)),
                                              Text("Merhaba",
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
                              "Fonksiyona Parametre Gönderme",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Fonksiyonlara dışarıdan bilgi gönderip fonksiyon içerisinde kullanabiliriz.",
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
                              width: Get.width - 20,
                              height: 120,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 65, 65, 65),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: Get.width - 370),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "def hello(x):",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "    print('Merhaba ' + x)",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "hello('Xanish')",
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
                                      Text("Merhaba Xanish",
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
                              "Fonksiyondan Geriye Bilgi Gönderme",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Fonksiyon içerisinde print() ile bilgi yazdırmak yerine bilgiyi geriye de döndürebiliriz.",
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
                              width: Get.width - 20,
                              height: 120,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 65, 65, 65),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: Get.width - 370),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "def hello(x):",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "    return('Merhaba ' + x)",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "print(hello('Xanish'))",
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
                                      Text("Merhaba Xanish",
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
                            "Gördüğünüz gibi print ile bilgiyi fonksiyon içerisinde yazdırmak yerine 'Merhaba Xanish' bilgisini fonksiyondan geriye return komutu ile döndürdük ve sonrasında bilgiyi ekrana yazdırdık.",
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
            ),
        
    );
  }
}