import 'package:flutter/material.dart';
import 'package:flutter_getx/models/user.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class ProfileController extends GetxController {
  User _user;

  User get user => _user;

  String _inputText = '';

  @override
  void onInit() {
    super.onInit();

    this._user = Get.arguments as User;
  }

  void onInputTextChanged(String text) {
    this._inputText = text;
  }

  void goToBackWithData() {
    if (this._inputText.trim().length > 0) {
      Get.back(result: this._inputText);
    } else {
      Get.dialog(
        AlertDialog(
          title: Text('Erro'),
          content: Text('Informe um valor válido.'),
          actions: [
            FlatButton(
              onPressed: () => Get.back(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
