import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/splash_controller.dart';
import 'package:get/state_manager.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      dispose: (_) {
        print('Normal dispose');
      },
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
