import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:topjoy/controllers/home_view_controller.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          body: Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  controller.flipTheBottlecap();
                },
                child: Stack(
                  children: [
                    Image.asset(
                      'images/bottlecap_${controller.bottlecapState}.png',
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      padding: EdgeInsets.all(55),
                      child: Center(
                        child: Text(
                          controller.giveMeMessage(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: Color.fromARGB(255, 46, 71, 47),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        );
      },
    );
  }
}
