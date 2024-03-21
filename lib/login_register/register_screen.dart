import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Auth/auth_controller.dart';
import '../Controller/login_register_controller.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override


  Widget build(BuildContext context) {
    final Controller _ctrl = Get.put(Controller());
    final _auth = Get.put(AuthServ());
    return Scaffold(
      body: Obx(
        () => _auth.loading.value == false
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Container(
                  width: Get.width,
                  height: Get.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("lib/AssetImage/rm222-mind-14.jpg"),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 35),
                        child: Container(
                          height: 350,
                          width: 350,
                          child: Image.asset(
                              "lib/AssetImage/revanin 3cu eks flortu.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                            "Heyyy, kayıt olmadan giriş yapamazsınız",
                            style: GoogleFonts.caveat(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        width: Get.width - 60,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 30),
                              child: TextField(
                                controller: _ctrl.name_register.value,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(44, 0, 202, 1))),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: "Kullanıcı adı",
                                  prefixIcon: Icon(Icons.account_circle),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: TextField(
                                controller: _ctrl.email_register.value,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(44, 0, 202, 1))),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.email),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: TextField(
                                obscureText: true,
                                controller: _ctrl.pasword_register.value,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(44, 0, 202, 1))),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: "Şifre",
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: SizedBox(
                                height: 55,
                                width: 400,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    
                                    _auth.loading.value == false
                                        ? CircularProgressIndicator()
                                        : await _auth.singup(
                                            email:
                                                _ctrl.email_register.value.text,
                                            name:
                                                _ctrl.name_register.value.text,
                                            password: _ctrl
                                                .pasword_register.value.text);
                                                
                                                },
                                  child: Text(
                                    "Kayıt ol",
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
                                        Color.fromRGBO(16, 0, 138, 1)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
