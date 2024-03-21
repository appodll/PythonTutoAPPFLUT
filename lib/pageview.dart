import 'dart:ui';

import 'package:applicationtutorial/Controller/screen2_auth.dart';
import 'package:applicationtutorial/Controller/screen_cont.dart';
import 'package:applicationtutorial/screen/missions1.dart';
import 'package:applicationtutorial/screen/screen.dart';
import 'package:applicationtutorial/screen2/screen2.dart';
import 'package:applicationtutorial/screen3/screen3.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class PAGEVIEW extends StatefulWidget {
  const PAGEVIEW({super.key});

  @override
  State<PAGEVIEW> createState() => _PAGEVIEWState();
}

class _PAGEVIEWState extends State<PAGEVIEW> {
  @override
  Widget build(BuildContext context) {
    final _ctrl = Get.put(DataController());
    final _ctrl2 = Get.put(DataController2());
    _ctrl.check();
    return Obx(
      () => PageView(
        controller: PageController(
            initialPage: _ctrl.ilerleme_count.value != "100%"
                ? 0
                : _ctrl2.ilerleme_count2.value != "100%"
                    ? 1
                    : 2),
        onPageChanged: (value) {
          setState(() {
            if (value == 0) {
              _ctrl.page_cont.value = 15;
              _ctrl.page_cont2.value = 10;
              _ctrl.page_cont3.value = 10;
            }
            if (value == 1) {
              _ctrl.page_cont2.value = 15;
              _ctrl.page_cont.value = 10;
              _ctrl.page_cont3.value = 10;
            }
            if (value == 2) {
              _ctrl.page_cont3.value = 15;
              _ctrl.page_cont2.value = 10;
              _ctrl.page_cont.value = 10;
            }
          });
        },
        children: [
          SCREEN(),
          _ctrl.ilerleme_count.value == "100%"
              ? SCREEN2()
              : Stack(
                  children: [
                    SCREEN2(),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(color: Colors.transparent),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(92, 0, 0, 0),
                                    blurRadius: 50)
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                      "lib/AssetImage/Lock_icon.png"))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Bu sayfaya geçmek için görevleri bitirmelisiniz',
                          style: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
          _ctrl2.ilerleme_count2.value == "100%"
              ? SCREEN3()
              : Stack(
                  children: [
                    SCREEN3(),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(color: Colors.transparent),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(92, 0, 0, 0),
                                    blurRadius: 50)
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                      "lib/AssetImage/Lock_icon.png"))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Bu sayfaya geçmek için görevleri bitirmelisiniz',
                          style: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
