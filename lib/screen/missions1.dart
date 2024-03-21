import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Auth/auth_controller.dart';
import '../Controller/screen_cont.dart';



class MISSIONS1 extends StatelessWidget {
  const MISSIONS1({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    final _auth = Get.put(AuthServ());
    return Scaffold(
      floatingActionButton:
          Container(width: 250, child: _ctrl.floatingbutton.value),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: Obx(
        () => _ctrl.loading == false
            ? Center(child: CircularProgressIndicator())
            : Container(
                width: Get.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/AssetImage/HD-wallpaper-cool-color-design-designs-flat-material-mobile.jpg",),
                        fit: BoxFit.cover,)),
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
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
                                  "Python nedir? ",
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontSize: 30, fontWeight: FontWeight.bold,
                                      ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Python popüler bir programlama dilidir. Web uygulamaları, yapay zeka, yazılım geliştirme, veri bilimi ve makine öğreniminde (ML) yaygın olarak kullanılan bir programlama dilidir. ",
                                style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.w500, ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 0),
                                padding: EdgeInsets.only(right: Get.width - 250),
                                child: Text(
                                  "Niye Python?",
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontSize: 30, fontWeight: FontWeight.bold,),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Python farklı platformlarda (Windows, Mac, Linux, Raspberry Pi vb.) çalışır. Python'un İngilizceye benzer basit bir sözdizimi vardır. Python, geliştiricilerin diğer bazı programlama dillerine göre daha az satırla programlar yazmasına olanak tanıyan sözdizimine sahiptir. Python bir tercüman sistemi üzerinde çalışır; bu, kodun yazıldığı anda çalıştırılabileceği anlamına gelir. Bu, prototip oluşturmanın çok hızlı olabileceği anlamına gelir. Python prosedürel, nesne yönelimli veya işlevsel bir şekilde ele alınabilir.",
                                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500, ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 0),
                                padding: EdgeInsets.only(right: Get.width - 350),
                                child: Text(
                                  "Python ile ne yapabilir?",
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontSize: 30, fontWeight: FontWeight.bold, ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Python, web uygulamaları oluşturmak için bir sunucuda kullanılabilir. Python, iş akışları oluşturmak için yazılımla birlikte kullanılabilir. Python veritabanı sistemlerine bağlanabilir. Ayrıca dosyaları okuyabilir ve değiştirebilir. Python büyük verileri işlemek ve karmaşık matematik işlemlerini gerçekleştirmek için kullanılabilir. Python hızlı prototip oluşturma veya üretime hazır yazılım geliştirme için kullanılabilir.",
                                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 0),
                                padding: EdgeInsets.only(right: Get.width - 350),
                                child: Text(
                                  "Python'un Kolaylıkları? ",
                                  style: TextStyle(
                                  
                                    color: Colors.white,
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Python, genellikle noktalı virgül veya parantez kullanan diğer programlama dillerinin aksine, bir komutu tamamlamak için yeni satırlar kullanır. Python kapsamı tanımlamak için boşluk kullanan girintiye dayanır; döngülerin kapsamı, işlevler ve sınıflar gibi. Diğer programlama dilleri genellikle bu amaç için küme parantezleri kullanır.",
                                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
