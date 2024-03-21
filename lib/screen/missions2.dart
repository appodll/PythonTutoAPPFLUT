import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../Controller/screen_cont.dart';

class MISSIONS2 extends StatelessWidget {
  const MISSIONS2({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    return Scaffold(
        floatingActionButton:
            Container(width: 250, child: _ctrl.floatingbutton2.value),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        body: Obx(
          () => _ctrl.loading == false
              ? Center(child: CircularProgressIndicator())
              : Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                        "lib/AssetImage/HD-wallpaper-classy-abstract-design-galaxy-geometric-material-pattern.jpg"),
                    fit: BoxFit.cover,
                  )),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                    child: Container(
                      padding: EdgeInsets.only(top: 60),
                      margin: EdgeInsets.only(bottom: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: Get.width - 350),
                            child: Text(
                              "Python Veri Tipleri",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Python dilinde veri tiplerini anlamak, programlamada temel bir öneme sahiptir. Doğru veri tipini seçmek, programınızın verimli, güvenilir ve beklenen sonuçları üretebilmesini sağlar. Bir değişkenin hangi veri türünü temsil ettiğini bilmek, değişkenin nasıl kullanılacağına ve hangi tür işlemlerin yapılacağına karar vermenizi ve programınızın doğru şekilde çalışmasını sağlar. Kodunuzu yazarken karşınıza çıkabilecek basit hataları yapmanızı engeller. Veri tiplerini doğru bir şekilde kullanmak, programınızın bellek kullanımını iyileştirip daha verimli çalışmasını sağlar. Veri tiplerini anlamak, doğru veri tipini kullanıp o veri tipine özgün işlemleri uygulayarak programınızın daha verimli işlemesine yardımcı olur.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                                "Pyhton’da veri tiplerini 5 ayrı sınıfta inceleyebiliriz. Bunlar; sayısal , sözlük , boolean , küme(set) ve sequence type’dir.",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Integer",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Python’da integer (int) veri tipi tam sayıları ifade eder. Ondalık veya kesirli olmadan pozitif, negatif veya sıfır değerlerini alabilir.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Center(
                              child: Container(
                                width: Get.width - 50,
                                height: 80,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 65, 65, 65),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: Get.width - 280),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "x = 10",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "print(type(x))",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Outputs:",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white)),
                                        Text("<class 'int'>",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Padding(
                                padding: EdgeInsets.only(left: 7),
                                child: Text(
                                    "Python’da bir değişkenin hangi veri tipinde saklandığı bulmak type() metodu kullanılır.",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        ))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Float",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                 ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Python’da float veri tipi ondalıklı sayıları ifade eder. Pozitif veya negatif olabilir. Bilimsel sayıları tanımlarken genellikle float veri tipi kullanılır.(4.5, 3.0 vs..)",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Complex Sayı",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Karmaşık sayıları ifade etmek için kullanılan bir nümerik veri tipidir. Karmaşık sayılar gerçek ve sanal kısımdan oluşur. Gerçek kısım integer ve float ile ifade edilirken sanal kısım “j” ile ifade edilir. Bu veri tipini bilimsel hesaplamalarda, sinyal işleme, görüntü işleme , matematiksel modelleme alanlarında kullanılır.(4+6j, 2-10j vs..)",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Dictionary (Sözlük)",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Sözlük veri tipi anahtar-değer çiftlerinden oluşur. Her bir anahtar bir değeri temsil eder ve bu değerlere erişim anahtar üstünden olur. Bir sözlük içinde aynı anahtara sahip birden fazla anahtar-değer çifti bulunamaz. Bu özellik sayesinde anahtarlar ile değerlere erişim sağlanır. Bu veri tipi anahtar ile erişimi sayesinde, büyük ve karmaşık verilerle çalışırken veriye daha hızlı erişmemizi sağlar. Dictionary veri tipi değiştirilebilir (mutable) bir veri tipidir. Yani anahtar-değer çiftleri eklenebilir, güncellenebilir veya silinebilir. Anahtar kısmı için immutable (değiştirilemez) veri tipleri kullanılır. Çünkü anahtarlar benzersiz olmalıdır. Anahtar kısmında string, integer,float,boolean,tuple dictionary anahtarları olarak kullanılabilir. Değer kısmı için ise tüm veriler kullanılabilir.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Center(
                              child: Container(
                                width: Get.width - 30,
                                height: 120,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 65, 65, 65),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "my_dict = {'elma': 20, 'armut' : 30}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "print(type(my_dict))",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Outputs: <class 'dict'>",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Boolean",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Bu veri tipi True ya da False olmak üzere sadece iki değere sahiptir.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Set",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Python’da set veri tipi, benzersiz ve sırasız elemanların bir koleksiyonunu temsil eder. Setler, süslü parantezler içinde tanımlanır ve virgülle ayrılan öğelerden oluşur. Bir set, her bir elemandan yalnızca bir tane içerir. Set veri tipi de dictionary ve liste gibi değiştirilebilir (mutable) bir veri tipidir. Elemanları ekleme, çıkarma ve değiştirme gibi işlemlerle değiştirilebilir. Setler, matematiksel küme işlemlerini destekleyen bir veri tipidir. İki veya daha fazla seti birleştirme, kesişimini bulma, farkını bulma gibi işlemleri gerçekleştirmek için setler kullanılabilir.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
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
                                    color:
                                        const Color.fromARGB(255, 65, 65, 65),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "my_set = {'elma', 'armut'}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "print(type(my_set))",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Outputs: <class 'set'>",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "String",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Python’da “strings” (dizeler) metinsel verileri temsil etmek için kullanılan veri tipleridir. Bir string, bir veya daha fazla karakterin bir araya gelerek oluşturduğu bir sıralı veridir. Stringler, tek tırnak (‘ ‘), çift tırnak (“ “), veya üçlü tırnak içinde tanımlanabilir.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Listeler",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Python’da “listeler” (lists), birden çok veri öğesini bir araya getirmek için kullanılan ve değiştirilebilen veri tipleridir. Elemanları ekleme, çıkarma ve değiştirme gibi işlemlerle değiştirilebilir. Listeler, köşeli parantezler içinde tanımlanır ve virgülle ayrılan öğelerden oluşur. Bir listede string, integer, float ,boolean veri tipleri aynı anda bulunabilir. Listeye ait bazı fonksiyonları kullanarak eleman ekleme,çıkarma,sıralama vb. gibi birçok işlemi yapabiliriz.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
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
                                    color:
                                        const Color.fromARGB(255, 65, 65, 65),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "my_list= [1,2,3]",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "print(type(my_list))",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Outputs: <class 'list'>",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Tuple",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "Python’da “tuple” (demet), birden çok veri öğesini bir araya getirmek için kullanılan ve değiştirilemez (immutable) veri tiplerinden biridir. Tuple’lar, parantezler içinde tanımlanır ve virgülle ayrılan öğelerden oluşur. Tuple’lar, listelere benzerdir ancak değiştirilemez özellikleri vardır, yani bir kez oluşturulduktan sonra öğelerini değiştiremezsiniz.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
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
                                    color:
                                        const Color.fromARGB(255, 65, 65, 65),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "my_tuple= (1,2,3)",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "print(type(my_tuple))",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Outputs: <class 'tuple'>",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
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
        ));
  }
}
