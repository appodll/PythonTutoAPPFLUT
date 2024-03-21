import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/screen_cont.dart';

class MISSIONS3 extends StatelessWidget {
  const MISSIONS3({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton3.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "lib/AssetImage/desktop-wallpaper-texture-textures-minimalism-shapes-shape-geometry-triangles.jpg"),
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
                      'Python’da dize (string) nedir?',
                      style: TextStyle(
                          color: Colors.white,
                          
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Python’da herhangi bir karakter dizisine string denir. Tek bir harften oluşabileceği gibi, içerisinde boşluklar olabilir, özel karakterler veya rakamlar barındırabilir. Python’da string veri tipi “str” ile ifade edilir. Bilgisayarlar, ikili (binary) sayılardan yani 1 ve 0’lardan anlarlar. Her ne kadar ekranda karakterleri görsek de, içerde ASCII ve Unicode gibi yöntemlerle ikili sisteme dönüştülürler (encoding).",
                    style: TextStyle(
                        color: Colors.white,
                        
                        fontSize: 17),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: Get.width - 300),
                    child: Text(
                      'Python’da string nasıl oluştulur?',
                      style: TextStyle(
                          color: Colors.white,
                          
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                      "Python’da string değişkenleri tırnak (‘) karakteri yardımıyla oluşturulur. String oluşturmak için tek tırnak (‘ ‘) veya çift tırnak (” “) kullanılabilir. Tek ve çift tırnak ile oluşturulan stringler tek satırda başlar ve biter. Birden çok satırlı string oluşturmak için üç tırnak (“”” “””) kullanılır. Yeni bir değişken oluştururken, Python’da değişken ismi belirlerken şu kurallara uyulmalıdır:",
                      style: TextStyle(
                          color: Colors.white,
                          
                          fontSize: 17)),
                  Text(
                    "1. Herhangi bir ön tanımlı kelime (Ör: Python’ın upper() fonksiyonu) ismi kullanılamaz.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        ),
                  ),
                  Text(
                    "2. Değişken ismi rakam ile başlayamaz.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        ),
                  ),
                  Text(
                    "3. Alt tire (_) dışında bir özel karakter kullanılamaz.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        ),
                  ),
                  Text(
                    "4. Boşluk içeremez.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        ),
                  ),
                  Text(
                    "Bu kurallardan herhangi birini ihlal ettiğiniz durumlarda “SyntaxError” hatası ile karşılaşacaksınız.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        ),
                  ),
                  Container(
                      padding: EdgeInsets.only(right: Get.width - 300),
                      child: Text(
                        'Bir stringin karakterlerine nasıl erişilir?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                      )),
                  Text(
                    "Python’da stringlerin tanımını yaparken, bir karakter dizisi olduğunu belirttik. Bir string oluşturduğunuz anda o değişken için bir indeks oluşur. Bu indeks yardımıyla, herhangi bir karaktere erişebilirsiniz.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        ),
                  ),
                  Image.asset(
                    "lib/AssetImage/string-indeks-Photoroom.png-Photoroom.png",
                    color: Colors.white,
                  ),
                  Text(
                    "Herhangi bir string için dizin sıfırdan başlar ve soldan sağa doğru ilerledikçe her karakter için 1 artar. Bir stringdeki karakterlere ulaşmak için köşeli parantezler ([ ]) kullanılır. Köşeli parantez içine ilgili karakterin dizin değeri yazılır. Bu değer tam sayı olmalıdır.",
                    style: TextStyle(fontSize: 17, color: Colors.white ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 80,
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
                                    "x = 'python'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(x[0])",
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
                                Text("p",
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
                      "Negatif indeks sayesinde, karakterlere sağdan sola negatif değerler ile de erişebilirsiniz. Negatif indeks -1 ile başlar. En sondaki karakter, aynı zamanda sağdan sola bakıldığında ilk karakterdir. Bu karaktere -1 değeri ile ulaşabilirsiniz.",
                      style: TextStyle(fontSize: 17,color: Colors.white ,)),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 80,
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
                                    "x = 'python'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(x[-1])",
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
                                Text("n",
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
                    "String’de birden çok karaktere ulaşmak için dilimleme (slicing) işlemleri uygulanır. Dilimleme işlemi sırasında köşeli paranteze başlangıç ve bitiş indeksi değerleri girilmelidir. Bu işlem sırasında, başlangıç indeksinin dahil olarak sayıldığı, bitiş indeksinin ise dahil olarak sayılmadığı unutulmamalıdır.",
                    style: TextStyle(fontSize: 17,color: Colors.white ,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 80,
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
                                    "x = 'python'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(x[1:4])",
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
                                Text("yth",
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
                    "Bazı durumlarda, string içerisinde almak istediğiniz dilimi belirli bir aritmetik kurala göre almak isteyebilirsiniz. Mesela, belirlediğiniz aralıktaki tüm karakterleri değil, başlangıç karakterinden 2 karakter arayla almak isteyebilirsiniz. Bunu yapabilmek için başlangıç, bitiş indeks değerlerinin yanı sıra aralık değerini belirtmeniz gerekmektedir.",
                    style: TextStyle(fontSize: 17,color: Colors.white ,),
                  ),
                  Text(
                    "Stringdeki ilk üç ve son üç karaktere erişmek için:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 80,
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
                                    "x = 'python'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(x[:3], x[3:])",
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
                                Text("pyt, hon",
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
                    "String’in indeks değerlerinin dışında bir değeri çağırmak istediğiniz durumlarda “IndexError” hatası ile karşılaşırsınız.",
                    style: TextStyle(fontSize: 17,color: Colors.white ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 80,
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
                                    "x = 'python'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(x[9])",
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
                                Text("IndexError: string \nindex out of range",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Python’da string işlemleri",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Text(
                    "Her veri tipinin kendine has özellikleri ve işlem yetenekleri olduğundan bahsetmiştik. Python, karakter dizileri için birçok farklı hazır metot ve işlem yetenekleri ile oldukça zengin imkanlar sağlamaktadır.",
                    style: TextStyle(fontSize: 17,color: Colors.white ),
                  ),
                  Text(
                    "Matematiksel işlemler",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white ),
                  ),
                  Text(
                    "Python’da stringler bir karakter dizisi olduğu ve liste formatına benzediği için bazı matematiksel işlemleri yapmak mümkündür.",
                    style: TextStyle(fontSize: 17,color: Colors.white ,),
                  ),
                  Text(
                    "Bir dizenin kaç karakterden oluştuğunu bulmak için len() fonksiyonu kullanılır.",
                    style: TextStyle(fontSize: 17,color: Colors.white ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 80,
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
                                    "x = 'python'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(len(x))",
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
                                Text("6",
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
                    "İki veya daha fazla dizenin birleştirilmesi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white ),
                  ),
                  Text(
                    'İki dize birbiri ile toplama (+) operatörü ile birleştirilebilir.',
                    style: TextStyle(fontSize: 17,color: Colors.white ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 50,
                        height: 100,
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
                                    "x = 'python'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "y = 'java'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(x + ' ' + y)",
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
                                Text("python java",
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
                    "Dizenin sabit bir sayı ile çarpılması",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white ),
                  ),
                  Text(
                    "Python’da karakter dizeleri bir sayı gibi başka bir sayı ile çarpılabilir.",
                    style: TextStyle(fontSize: 17,color: Colors.white ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: Get.width - 20,
                        height: 80,
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
                                    "x = 'python'",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(3*x)",
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
                                Text("pythonpythonpython",
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
                    "Diğer veri tipleri – string dönüşümü",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white ),
                  ),
                  Text(
                    "Tüm veri tipleri bir dizeye dönüştürülebilir. Dönüşüm işlemi için str() fonkisyonu kullanılmalıdır:",
                    style: TextStyle(fontSize: 17,color: Colors.white ),
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
                              margin: EdgeInsets.only(right: Get.width - 320),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "sayi = 90.5",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "str_sayi = str(sayi)",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "print(type(str_sayi))",
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
                                Text("<class 'str'>",
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
    );
  }
}
