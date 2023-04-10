import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jobsin/consts/consts.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
    required this.hintField,
    this.backgroundColor,
  }) : super(key: key);

  final String hintField;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      width: size.width,
      height: 50,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10.0,
          offset: Offset(0, 5),
        )
      ], color: Theme.of(context).cardColor, borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            alignment: Alignment.center,
            child: Container(
                child: Icon(Icons.search),
            ),
          ),
          Flexible(
            child: Container(
              width: size.width,
              height: 38,
              alignment: Alignment.topCenter,
              child: TextField(
                style: TextStyle(fontSize: 13),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: hintField,
                  hintStyle: TextStyle(
                      fontSize: 13,
                      color:
                      Colors.grey,
                      fontWeight: FontWeight.w500
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            height: 40.0,
            width: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(7.0),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                  spreadRadius: 0.0,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Container(
              child: Image.asset(assetImg+"setting.png",color: Colors.white,height: 20,),
            ),
          ),
        ],
      ),
    );
  }
}
