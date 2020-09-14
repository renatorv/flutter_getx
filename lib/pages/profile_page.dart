import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/profile_controller.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          title: Text('Profile'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${_.user.firstName} ${_.user.lastName}'),
              SizedBox(height: 10),
              TextField(
                onChanged: _.onInputTextChanged,
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: _.goToBackWithData,
                child: Text('Aceitar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
