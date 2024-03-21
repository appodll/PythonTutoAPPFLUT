import 'package:applicationtutorial/Controller/screen_cont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MISSIONS6 extends StatelessWidget {
  const MISSIONS6({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton6.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "lib/AssetImage/132489-hd-wallpaper-red-green-and-black-wallpaper-orange-teal.jpg"),
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
                      'Python Tuple nedir?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Pythonda tuple listeleri, list' e benzer ancak farkı tuple içindeki elemanlar değiştirilemez yani tuple listesine ekleme, silme ve güncelleme yapamayız.",
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
                                    "tuple = (1,2,3)",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(type(liste))",
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
                                Text("<class 'tuple'>",
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
                    "Tuple liste elemanları, parantez ile oluşturulur. Ayrıca parantez kullanmadan da tuple listesi oluşturmuş oluruz ancak okunabilirlik açısından parantez kullanabiliriz.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      'Tuple Liste Elemanlarını Güncelleme',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Tuple liste elemanları değiştirilemez ancak başka bir liste türüne çevrilerek güncelleme yapılabilir.",
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
                        height: 170,
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
                                    "a = (1,2,3)",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "b = list(a)",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "b[0] = 6",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a = tuple(b)",
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
                                Text("(6,2,3)",
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
                    "Burada a ismindeki tuple listesini önce list() metodu ile list objesine çevirip güncellemeyi yapıyoruz ve sonrasında güncellenmiş listeyi tekrar tuple() metodu ile tuple objesine çeviriyoruz.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Python tuple listelerindeki her bir elemanına soldan itibaren 0' dan başlayarak indeks numarası ile ulaşabiliriz. Aynı şekilde sağdan -1. indeks numarasından başlamalıyız.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Tuple listesinden bir aralık seçmek istediğimizde ise slicing yöntemini kullanabiliriz.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      'Tuple Elemanlarına Döngü ile Erişim',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Tuple elamanlarına indeks numaraları ile nasıl erişebileceğimizi öğrendik ancak her bir elemana indeks numarası ile tek tek ulaşmak bazen zor olabilir dolayısıyla liste elemanlarına bazen döngü ile ulaşmak isteriz.",
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
                        height: 170,
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
                                    "a = ('blue','red','gray')",
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
                                Text("'blue'",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                Text("'red'",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                Text("'gray'",
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
                    "Python tuple ile kullanabileceğimiz 2 tane metot vardır. Bunlar count() ve index() metotlarıdır.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Bir tuple içerisindeki tekrarlayan elemanların sayısını almak için count() metodunu kullanırız.",
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
                        height: 120,
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
                                    "a = (1,2,3,1,5)",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(a.count(1))",
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
                                Text("2",
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
                    "Bir tuple içerisinde bir elemanın index numarasını almak için index() metodu kullanılır.",
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
                        height: 120,
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
                                    "a = (1,2,3,1,5)",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(a.index(3))",
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
                                Text("2",
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
