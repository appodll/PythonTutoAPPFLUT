import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/screen2_auth.dart';
import '../Controller/screen_cont.dart';
import '../Controller/sharedprefences.dart';
import '../login_register/login_screen.dart';

class SCREEN3 extends StatelessWidget {
  const SCREEN3({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController2());
    final elleme = Get.put(DataController());
    final _memory = Get.put(Memory());
    _ctrl.check();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await _memory.delete_memory();
            Get.to(LOGIN());
          },
          child: Icon(
            Icons.power_settings_new_rounded,
            color: Colors.black,
            size: 35,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          focusElevation: 0,
          focusColor: Colors.transparent,
          disabledElevation: 0,
          hoverColor: Colors.transparent,
          highlightElevation: 0,
          splashColor: Colors.transparent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: Obx(
          () => Container(
            padding: EdgeInsets.only(top: Get.height / 18),
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/AssetImage/HD-wallpaper-material-design-black-orange-lines-geometric-dark-android.jpg"),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high)),
            child: Column(
              children: [
                Container(
                  width: Get.width / 1.4,
                  height: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("lib/AssetImage/level 5.png"))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: elleme.page_cont.value.toDouble(),
                      width: elleme.page_cont.value.toDouble(),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(colors: [
                            Colors.red,
                            Colors.orange,
                          ])),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: elleme.page_cont2.value.toDouble(),
                      width: elleme.page_cont2.value.toDouble(),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(colors: [
                            Colors.red,
                            Colors.orange,
                          ])),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: elleme.page_cont3.value.toDouble(),
                      width: elleme.page_cont3.value.toDouble(),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(colors: [
                            Colors.red,
                            Colors.orange,
                          ])),
                    ),
                  ],
                ),
                Text(
                  "Seviye: Uzman",
                  style: TextStyle(
                    decoration: _ctrl.decaration3.value,
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: Get.width - 30,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(228, 228, 228, 0.651),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Center(
                      child: Text(
                    "Ilerleme ${_ctrl.ilerleme_count3.value}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: Get.width - 50,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(131, 0, 0, 0.878),
                              Color.fromRGBO(0, 16, 134, 0.689)
                            ]),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(right: Get.width - 235),
                                    child: Text(
                                      "Fonksiyon Nedir?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button31.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color31.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                      SizedBox(
                          height: 10,
                        ),
                      
                      Container(
                          width: Get.width - 50,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(131, 0, 0, 0.878),
                              Color.fromRGBO(0, 16, 134, 0.689)
                            ]),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(right: Get.width - 202),
                                    child: Text(
                                      "Class Yapısı",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button32.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color32.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                      SizedBox(
                          height: 10,
                        ),
                       
                      ],
                    ),
                  ),
                
                )
              ],
            ),
          ),
        ));
  
  }
}