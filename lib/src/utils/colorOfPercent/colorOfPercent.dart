import 'package:flutter/material.dart';

Color? whatsColor(String val) {
  final valueCheck = double.parse(val);
  try {
    if (valueCheck == 0) {
      // color grey
      return Colors.grey;
    } else {
      if (valueCheck < 0) {
        // colors red
        if (valueCheck >= -5 && valueCheck < -0.01) {
          // melow red
          // #ed6555
          return const Color(0xFFed6555);
        } else {
          // dark red
          return Colors.red;
        }
      } else {
        //  color green
        if (valueCheck >= 0 && valueCheck <= 10) {
          //  melow green
          // #47b374
          return const Color(0xFF47b374);
        } else {
          //  dark green
          return Colors.green[700];
        }
      }
    }
  } catch (e) {
    return Colors.grey;
  }
}
