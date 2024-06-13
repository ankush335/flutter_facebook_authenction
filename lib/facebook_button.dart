import 'package:facebook_bala/facebook_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class FacebookButton extends StatelessWidget {
  FacebookButton({super.key, this.text, this.image, this.decoration});

  final FacebookController facebookController = Get.put(FacebookController());

  final BoxDecoration? decoration;
  final String? text;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          facebookController.signInWithFacebook();
          // Get.to(MainScreen());
        },
        child: Container(
            height: 50,
            decoration: decoration,
            child: Builder(builder: (context) {
              return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Text(
                        'facebook',
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ));
            })),
      ),
    );
  }
}
