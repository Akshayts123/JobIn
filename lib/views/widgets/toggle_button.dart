import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsin/utils/styles.dart';

import '../../controller/theme_controller.dart';

class ProfileButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isButtonActive;
  // final Function onTap;
  ProfileButton({required this.icon, required this.title, required this.isButtonActive});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Get.find<ThemeController>().toggleTheme();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)],
        ),
        child: Row(children: [
          Icon(icon, size: 25,color: Theme.of(context).primaryColor,),
          SizedBox(width: 10),
          Expanded(child: Text(title, style: popinsRegular)),
          isButtonActive  ? Switch(
            value: isButtonActive,
            onChanged: (bool isActive) =>(){
              // Get.find<ThemeController>().toggleTheme();
            },
            activeColor: Theme.of(context).primaryColor,
            activeTrackColor: Theme.of(context).primaryColor.withOpacity(0.5),
          ) : SizedBox(),
        ]),
      ),
    );
  }
}
