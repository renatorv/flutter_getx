import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        print('build home!!');
        return Scaffold(
          body: Center(
            child: GetBuilder<HomeController>(
              id: 'text',
              builder: (_) => Text(_.counter.toString()),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _.increment();
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}

//https://www.youtube.com/watch?v=4RsGZ145q1U&list=PLV0nOzdUS5XtParoZLgKoVwNSK9zROwuO&index=6
