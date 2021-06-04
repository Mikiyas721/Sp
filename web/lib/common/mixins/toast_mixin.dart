import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMixin {
  showErrorSnackBar(BuildContext context, String message) {
    return Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  showSuccessSnackBar(BuildContext context, String message) {
    return Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }

  toastSuccess(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.green,
      webBgColor: "linear-gradient(to right,#00b09b,#96c93d)",
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  toastError(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.red,
      webBgColor: "linear-gradient(to right,#FF3333,#FF2222)",
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
