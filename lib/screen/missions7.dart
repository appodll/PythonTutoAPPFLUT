import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/screen_cont.dart';

class MISSIONS7 extends StatelessWidget {
  const MISSIONS7({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton7.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        height: Get.height,
        width: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'lib/AssetImage/HD-wallpaper-red-green-grey-1-color-red-green-grey-abstract-backdrop-background-bright-brown-clean-colorful-creative-dark-design-diagonal-dynamic-geometric-geometrical-geometry-graphic-green.jpg'),
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
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      'Python Set nedir?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Pythonda set listeleri, list' e benzer ancak fark olarak set içindeki elemanlar sıralanamaz (sort) ve indekslenemez yani set elemanlarına 0,1 şeklinde indeks numaraları ile ulaşamayız. Dolayısıyla set 'e eklediğimiz bir elemanın set listesi içinde hangi sırada olacağını bilemeyiz. Ayrıca set içerisindeki elemanlar tekrarlayamaz, her bir elemandan sadece bir tane olmalıdır, tekrarlayanlar silinir.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Pythonda set oluşturmak için süslü parantezler kullanırız.",
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
                                    "a = {'red', 'gray'}",
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
                                Text("<class 'set'>",
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
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      'Set Elemanlarına Erişim',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Set elemanlarına indeks numarası verilmediğinden dolayı indeks numarasına göre elemanlara ulaşamayız. Ancak bir döngü yardımıyla ulaşabiliriz.",
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
                                    "a = {'red', 'gray'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "for i in a:",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "  print(i)",
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
                                Text("red",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                Text("gray",
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
                    "Ya da bir elemanın set listesinin bir elemanı olup olmadığını kontrol etmek için in operatörü kullanabiliriz.",
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
                                    "a = {'red', 'gray'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print('green' in a)",
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
                                Text("False",
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
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      "Set' e Yeni Eleman Ekleme",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Set listesine tek bir eleman eklemek için add() metodunu, birden fazla eleman eklemek için ise update() metodunu kullanabiliriz.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Set' e birden fazla eleman eklemek için ise:",
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
                              margin: EdgeInsets.only(right: Get.width - 360),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = {'red', 'gray'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.update(['1','2'])",
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
                                Text("{'red', 'gray', '1','2'}",
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
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      "Set Elemanlarını Silme",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Set' den bir eleman silmek için remove() ya da discard() metodu kullanılabilir.",
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
                                    "a = {'red', 'gray'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.remove('gray')",
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
                                Text("{'red'}",
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
                    "Eğer ki silmek istediğimiz eleman set içerisinde yok ise bu durumda geriye bir exception yani hata objesi döndürülür.",
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
                              margin: EdgeInsets.only(right: Get.width - 360),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = {'red', 'gray'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.discard('gray')",
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
                                Text("{'red'}",
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
                    "remove() metodundan farklı olarak discard() metodu ile silmek istediğimiz değer set içerisinde yoksa bir exception yani hata objesi döndürülmez.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "clear() metodu ile set elemanlarının hepsini silebiliriz.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "del komutu ile set listesinin referansını sileriz dolayısıyla set ' e tekrar ulaşmak istediğimizde hata alırız.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      "Birden Fazla Set Listesini Birleştirme",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Birden fazla set listesini birleştirmek için kullanabileceğimiz union() ve update() metotları vardır.",
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
                              margin: EdgeInsets.only(right: Get.width - 370),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = {'red', 'gray'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "b = {'blue'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(a.union(b))",
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
                                Text("{'red', 'gray', 'blue'}",
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
                    "union() metodu ile birleştirilen set' ler yeni bir set objesiyle geri döner.",
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
                        height: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 65, 65, 65),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: Get.width - 370),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = {'red', 'gray'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "b = {'blue'}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.update(b)",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(a)",
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
                                Text("{'red', 'gray', 'blue'}",
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
                    "update() metodu ile bir set'i diğer set içerisine eklemiş oluyoruz yeni bir set objesi oluşturulmaz. ",
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
