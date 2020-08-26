library animated_dialog_box;

import 'package:flutter/material.dart';
//import 'package:vector_math/vector_math.dart' as math;

class DialogBox {
  static Future showCustomAlertBox({
    @required BuildContext context,
    @required Widget yourWidget,
    @required Widget firstButton,
  }) {
    assert(context != null, "context is null!!");
    assert(yourWidget != null, "yourWidget is null!!");
    assert(firstButton != null, "Button is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                yourWidget,
              ],
            ),
            actions: <Widget>[firstButton],
            elevation: 10,
          );
        });
  }

}