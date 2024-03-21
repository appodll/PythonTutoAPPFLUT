import 'package:applicationtutorial/Controller/sharedprefences.dart';
import 'package:applicationtutorial/login_register/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../Controller/screen_cont.dart';

class SCREEN extends StatelessWidget {
  const SCREEN({super.key});

  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    final _memory = Get.put(Memory());
    _ctrl.check();

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
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
                    image: AssetImage(
                        "lib/AssetImage/Mobile background image 6 tBAxHf4 High resolution HD Smartphone Wallpaper.jpeg"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  width: Get.width / 1.4,
                  height: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("lib/AssetImage/level 1.png"))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: _ctrl.page_cont.value.toDouble(),
                      width: _ctrl.page_cont.value.toDouble(),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        gradient: LinearGradient(colors: [
                          
                          Colors.red,
                          Colors.orange,
                        ])
                      ),
                    ),
                    SizedBox(width: 3,),
                    Container(
                      height: _ctrl.page_cont2.value.toDouble(),
                      width: _ctrl.page_cont2.value.toDouble(),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        gradient: LinearGradient(colors: [
                          
                          Colors.red,
                          Colors.orange,
                        ])
                      ),
                    ),
                    SizedBox(width: 3,),
                    Container(
                      height: _ctrl.page_cont3.value.toDouble(),
                      width: _ctrl.page_cont3.value.toDouble(),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        gradient: LinearGradient(colors: [
                          
                          Colors.red,
                          Colors.orange,
                        ])
                      ),
                    ),
                  ],
                ),
                Text(
                  "Seviye: Çaylak",
                  style: TextStyle(
                    decoration: _ctrl.decaration.value,
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
                    "Ilerleme ${_ctrl.ilerleme_count.value}",
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
                                        EdgeInsets.only(right: Get.width - 225),
                                    child: Text(
                                      "Neden Python?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                        EdgeInsets.only(right: Get.width - 195),
                                    child: Text(
                                      "Veri Tipleri",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button2.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color2.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                        EdgeInsets.only(right: Get.width - 210),
                                    child: Text(
                                      "String Nedir?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button3.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color3.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                      "Bool Nedir?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button4.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color4.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                        EdgeInsets.only(right: Get.width - 196),
                                    child: Text(
                                      "List Nedir?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button5.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color5.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                        EdgeInsets.only(right: Get.width - 205),
                                    child: Text(
                                      "Tuple Nedir?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button6.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color6.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                        EdgeInsets.only(right: Get.width - 192),
                                    child: Text(
                                      "Set Nedir?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button7.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color7.value,
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                        EdgeInsets.only(right: Get.width - 240),
                                    child: Text(
                                      "Dictionary Nedir?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  _ctrl.button8.value
                                ],
                              ),
                              Container(
                                height: 2,
                                width: Get.width - 70,
                                decoration: BoxDecoration(
                                    color: _ctrl.color8.value,
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
