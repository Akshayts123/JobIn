import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsin/consts/consts.dart';
import 'package:jobsin/consts/padding.dart';
import 'package:jobsin/views/pages/home/widgets/search.dart';

import '../../../controller/theme_controller.dart';
import '../../../utils/styles.dart';
import '../../widgets/toggle_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(appPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            assetImg + "user.png",
                            fit: BoxFit.cover,
                            height: 45,
                            width: 45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: spacer - 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Good Morning",
                              style: popinsRegular.copyWith(fontSize: 14),
                            ),
                            SizedBox(
                              width: spacer - 40,
                            ),
                            Image.asset(
                              assetImg + "hii.png",
                              fit: BoxFit.cover,
                              height: 20,
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          "Akshay Adam",
                          style: popinsBold.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ElevatedButton(onPressed: (){
                  //   Get.find<ThemeController>().toggleTheme();
                  // }, child: Text("darkmode"))
                ],
              ),
              SizedBox(
                height: spacer - 30,
              ),
              Search(
                hintField: 'Search Medicine & Healthcare products',
              ),
              // ProfileButton(icon: Icons.dark_mode, title: 'dark_mode'.tr, isButtonActive: Get.isDarkMode, ),
              SizedBox(
                height: spacer - 30,
              ),
              Container(
                padding: EdgeInsets.all(appPadding + 10),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstATop),
                      image: AssetImage(assetImg + "abstract.jpg"),
                    ),
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Column(
                      children: [
                         Container(
                          width: 170,
                          child: Text(
                            "See how you can find a job quickly",
                            style: popinsBold.copyWith(fontSize: 20,color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Center(child: Text("Read More")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
