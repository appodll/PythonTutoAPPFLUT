// ignore_for_file: must_be_immutable
import 'package:applicationtutorial/login_register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Auth/auth_controller.dart';
import '../Controller/login_register_controller.dart';
import '../Controller/sharedprefences.dart';


class LOGIN extends StatelessWidget {
  LOGIN({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller _ctrl = Get.put(Controller());
    final _auth = Get.put(AuthServ());
    return Scaffold(
      body: Obx(
        () => _auth.loading.value == false? Center(child: CircularProgressIndicator()):SingleChildScrollView(
          child: Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/AssetImage/v904-nunny-012-e.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: Get.width / 35.5),
                      margin: EdgeInsets.only(top: 140),
                      child: Icon(
                        Icons.android,
                        size: 100,
                      )),
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    margin: EdgeInsets.only(top: 80),
                    child: Column(
                      children: [
                        Text(
                          "TEKRAR MERHABA",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -2,
                          ),
                        ),
                        Text(
                          "Tekrar hoş geldiniz, özlendiniz!",
                          style: TextStyle(fontSize: 16, letterSpacing: 2),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      width: Get.width - 60,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 50),
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(101, 0, 202, 1))),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: "Email",
                                prefixIcon: Icon(Icons.email),
                              ),
                              controller: _ctrl.email_login.value,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(101, 0, 202, 1))),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: "Şifre",
                                prefixIcon: Icon(Icons.lock),
                              ),
                              controller: _ctrl.password_login.value,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: SizedBox(
                              height: 55,
                              width: 400,
                              child: ElevatedButton(
                                onPressed: () async {
                                  await _auth.singin(email: _ctrl.email_login.value.text, password: _ctrl.password_login.value.text);
                                  Memory().write_uid();
                                },
                                child: Text(
                                  "Giriş Yap",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromRGBO(69, 0, 138, 1)),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Üye değilmisin?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Get.to(Register());
                                    
                                  },
                                  child: Text(
                                    "Hemen Kayıt ol",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 2, 110, 205),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
