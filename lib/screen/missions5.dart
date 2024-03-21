import 'package:applicationtutorial/Controller/screen_cont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MISSIONS5 extends StatelessWidget {
  const MISSIONS5({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton5.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "lib/AssetImage/orange-black-material-design-8k-62-1242x2688.jpg"),
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
                      'Python Listeler ve Demetler nedir?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Bu bölüme gelene kadar yalnızca iki farklı veri tipi görmüştük. Bunlardan biri karakter dizileri, öteki ise sayılardı. Ancak tabii ki Python’daki veri tipleri yalnızca bu ikisiyle sınırlı değildir. Python’da karakter dizileri ve sayıların dışında, başka amaçlara hizmet eden, başka veri tipleri de vardır. İşte biz bu bölümde iki farklı veri tipi daha öğreneceğiz. Bu bölümde ele alacağımız veri tiplerinin adı ‘liste’ (list) ve ‘demet’ (tuple). Bu bölümde birer veri tipi olarak listeler ve demetlerden söz etmenin yanısıra liste ve demetlerin metotlarından da bahsedeceğiz. Listelerle demetleri öğrendikten sonra Python’daki hareket imkanınızın bir hayli genişlediğine tanık olacaksınız. Python programlama diline yeni başlayan biri, karakter dizilerini öğrendikten sonra bu dilde her şeyi karakter dizileri yardımıyla halledebileceğini zannedebilir. O yüzden yeni bir veri tipi ile karşılaştığında (örneğin listeler veya demetler), bu yeni veri tipi ona anlamsız ve gereksizmiş gibi görünebilir. Aslında daha önce de söylediğimiz gibi, bir programlama dilini yeni öğrenenlerin genel sorunudur bu. Öğrenci, bir programlama dilini oluşturan minik parçaları öğrenirken, öğrencinin zihni bu parçaların ne işine yarayacağı konusunda şüpheyle dolar. Sanki gereksiz şeylerle vakit kaybediyormuş gibi hissedebilir. En önemli ve en büyük programların, bu minik parçaların sistematik bir şekilde birleştirilmesiyle ortaya çıkacak olması öğrencinin kafasına yatmayabilir. Halbuki en karmaşık programların bile kaynak kodlarını incelediğinizde görecekleriniz karakter dizileri, listeler, demetler, sayılar ve buna benzer başka veri tiplerinden ibarettir. Nasıl en lezzetli yemekler birkaç basit malzemenin bir araya gelmesi ile ortaya çıkıyorsa, en abidevi programlar da ilk bakışta birbiriyle ilgisiz görünen çok basit parçaların incelikli bir şekilde birleştirilmesinden oluşur. O halde bu noktada, Python programlama diline yeni başlayan hemen herkesin sorduğu o soruyu soralım kendimize: ‘Neden farklı veri tipleri var? Bu veri tiplerinin hepsine gerçekten ihtiyacım olacak mı? Bu soruyu başka bir soruyla cevaplamaya çalışalım: ‘Acaba neden farklı giysi tipleri var? Neden kot pantolon, kumaş pantolon, tişört, gömlek ve buna benzer ayrımlara ihtiyaç duyuyoruz?’ Bu sorunun cevabı çok basit: ‘Çünkü farklı durumlara farklı giysi türleri uygundur! Örneğin ev taşıyacaksanız, herhalde kumaş pantolon ve gömlek giymezsiniz üzerinize. Buna benzer bir şekilde iş görüşmesine giderken de kot pantolon ve tişört doğru bir tercih olmayabilir. İşte buna benzer sebeplerden, programlama dillerinde de belli durumlarda belli veri tiplerini kullanmanız gerekir. Örneğin bir durumda karakter dizilerini kullanmak uygunken, başka bir durumda listeleri veya demetleri kullanmak daha mantıklı olabilir. Zira her veri tipinin kendine has güçlü ve zayıf yanları vardır. Veri tiplerini ve bunların ayrıntılarını öğrendikçe, hangi veri tipinin hangi sorun için daha kullanışlı olduğunu kestirebilecek duruma geleceğinizden hiç kuşkunuz olmasın. Biz bu bölümde listeleri ve demetleri olabildiğince ayrıntılı bir şekilde inceleyeceğiz. O yüzden bu veri tiplerini incelerken konuyu birkaç farklı bölüme ayıracağız. Listeleri ve demetleri incelemeye listelerden başlayalım…",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Listeler',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Giriş bölümünde de değindiğimiz gibi, listeler Python’daki veri tiplerinden biridir. Tıpkı karakter dizileri ve sayılar gibi…',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Liste Tanımlamak',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'herhangi bir öğeyi karakter dizisi olarak tanımlayabilmek için yapmamız gereken tek şey o öğeyi tırnak içine almaktı. Herhangi bir öğeyi (tek, çift veya üç) tırnak içine aldığımızda karakter dizimizi tanımlamış oluyoruz. Liste tanımlamak için de buna benzer bir şey yapıyoruz. ',
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
                                    "liste = ['1', '2', '3']",
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
                                Text("<class 'list'>",
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
                    'Yukarıda tanımladığımız liste adlı listeye baktığımızda dikkatimizi bir şey çekiyor olmalı. Bu listeye şöyle bir baktığımızda, aslında bu listenin, içinde üç adet karakter dizisi barındırdığını görüyoruz. Gerçekten de listeler, bir veya daha fazla veri tipini içinde barındıran kapsayıcı bir veri tipidir. Mesela şu listeye bir bakalım:',
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
                                    "liste = ['python', 2, 3.5]",
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
                                Text("<class 'list'>",
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
                    'Dahası, listelerin içinde başka listeler de bulunabilir:',
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
                                    "liste = ['python',[1,2],5.6]",
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
                                Text("<class 'list'>",
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
                    'Bir şeyin daha bize liste verdiğini biliyoruz. Bu şey, karakter dizilerinin split() adlı metodudur:',
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
                                    "a = 'Hello World'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.split()",
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
                                Text("['Hello','World']",
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
                    "Görüyorsunuz, split() metodunun çıktısı da köşeli parantezler içinde yer alıyor. Demek ki bu çıktı da bir listedir.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  Text(
                    "Karakter dizilerini incelerken öğrendiğimiz len() fonksiyonu listelerin boyutunu hesaplamada da kullanılabilir:",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 330),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = ['py','dart','java']",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(len(a))",
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
                  Text(
                    "Burada öncelikle bir for döngüsü oluşturduk. Bu sayede sayılar adlı listedeki öğelerin üzerinden tek tek geçebileceğiz. Eğer döngü içinde sadece öğeleri ekrana yazdırıyor olsaydık şöyle bir kodumuz olacaktı:",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 110,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 65, 65, 65),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: Get.width - 330),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = ['py','dart','java']",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "for i in a:",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "  print(a)",
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
                                Text("py",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                Text("dart",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                Text("java",
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
                    "Aralıktaki sayıları görmek için range() fonksiyonunun çıktısını bir döngü içine almalıyız:",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 330),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "for i in range(0,3)",
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
                                Text("0",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("1",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("2",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Yukarıdaki örneklerden de gördüğünüz gibi liste oluşturmak için öğeleri belirleyip bunları köşeli parantezler içine almamız yeterli oluyor. Bu yöntemin dışında, liste oluşturmanın bir yöntemi daha bulunur.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  Text(
                    "Karakter dizilerini anlatırken split() adlı bir metottan söz etmiştik. Bu metot karakter dizilerini belli bir ölçüte göre bölmemizi sağlıyordu. split() metoduyla elde edilen verinin bir liste olduğunu biliyorsunuz.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 380),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = 'python tutorial'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.split(' ')",
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
                                Text("['python','tutorial']",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Yalnız yöntem aynı olsa da yukarıdaki iki çıktı arasında bazı farklar olduğunu da gözden kaçırmayın. Bir karakter dizisinin 0. öğesini aldığımızda o karakter dizisinin ilk karakterini almış oluyoruz. Bir listenin 0. öğesini aldığımızda ise o listenin ilk öğesini almış oluyoruz. Sayma yöntemi olarak ise karakter dizileri ve listelerde aynı mantık geçerli. Hem listelerde hem de karakter dizilerinde Python saymaya 0’dan başlıyor. Yani karakter dizilerinde olduğu gibi, listelerde de ilk öğenin sırası 0. Sayma yöntemi olarak ise karakter dizileri ve listelerde aynı mantık geçerli. Hem listelerde hem de karakter dizilerinde Python saymaya 0’dan başlıyor. Yani karakter dizilerinde olduğu gibi, listelerde de ilk öğenin sırası 0.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 350),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = ['apple','orange']",
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
                                Text("apple",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("orange",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Dediğimiz gibi, liste öğelerine ulaşmak için kullandığımız yöntem, karakter dizilerinin öğelerine ulaşmak için kullandığımız yöntemle aynı. Aslında karakter dizileri ile listeler arasındaki benzerlik bununla sınırlı değildir. Benzerlikleri birkaç örnek üzerinde gösterelim:",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 350),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = ['apple','orange']",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(a[1])",
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
                                Text("orange",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      'Listeleri Birleştirmek',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Bazı durumlarda elinize farklı kaynaklardan farklı listeler gelebilir. Böyle bir durumda bu farklı listeleri tek bir liste halinde birleştirmeniz gerekebilir. Tıpkı karakter dizilerinde olduğu gibi, listelerde de birleştirme işlemleri için + işlecinden yararlanabilirsiniz.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 350),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = ['apple']",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "b = ['orange']",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(a+b)",
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
                                Text("['apple', 'orange']",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      'Listeden Öğe Çıkarmak',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Bir listeden öğe silmek için del adlı ifadeden yararlanabilirsiniz.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = [1,5,9]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "del a[1]",
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
                                Text("[1,9]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 370),
                    child: Text(
                      'Liste Üreteçleri (List Comprehensions)',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Şimdi Python’daki listelere ilişkin çok önemli bir konuya değineceğiz. Bu konunun adı ‘liste üreteçleri’. İngilizce’de buna “List Comprehension” adı veriliyor. Adından da anlaşılacağı gibi, liste üreteçlerinin görevi liste üretmektir.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                                    "a = [i for i in range(1000)]",
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
                                Text("[1,...999]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Python listeye eleman ekleme: ",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 320),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = [1,3]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.append(8)",
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
                                Text("[1,3,8]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Python listeden eleman silme: ",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 320),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = [1,3,8]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.remove(8)",
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
                                Text("[1,3]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Liste elemanlarını sıralamak için sort() metodu kullanılır.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 320),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = [2,10,7,1]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.sort()",
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
                                Text("[1,2,7,10]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Liste elemanlarını reverse() metodu ile tersten yazdırabiliriz.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
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
                              margin: EdgeInsets.only(right: Get.width - 320),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "a = [1,4,8,22]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "a.reverse()",
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
                                Text("[22,8,4,1]",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
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
