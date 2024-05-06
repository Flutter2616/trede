
import 'package:flutter/material.dart';


class DialogBox{


  static toastMessage(String message){
/*
    Fluttertoast.showToast(msg: message,

        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0);
*/
  }


  static snackBar(String message , BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: Colors.red,
          content: Text(message))
    );

  }
}