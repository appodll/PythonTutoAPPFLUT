import 'package:applicationtutorial/login_register/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerift extends StatelessWidget {
  const EmailVerift({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.email_rounded,
              size: 150,
            ),
            Text(
              "E-posta adresinizi doğrulayın",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Az önce e-postanıza doğrulama bağlantısı gönderdik. Lütfen e-mailinizi kontrol ediniz :)",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ),
            TextButton(onPressed: (){
              Get.to(LOGIN());
            }, child: Text("<- Giriş sayfasına dön", style: TextStyle(
              color: Color.fromARGB(255, 33, 93, 243)
            ),))
          ],
        ),
      ),
    );
  }
}
