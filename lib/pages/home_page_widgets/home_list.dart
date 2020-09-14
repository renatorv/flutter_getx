import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/home_controller.dart';
import 'package:flutter_getx/models/user.dart';
import 'package:get/state_manager.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      builder: (_) {
        if (_.loading) {
          return Center(
            child: LinearProgressIndicator(),
          );
        }
        return ListView.builder(
          itemBuilder: (ctx, index) {
            final User usu = _.users[index];
            return ListTile(
              title: Text(usu.firstName),
              subtitle: Text(usu.email),
              onTap: () => _.showUSerProfile(usu),
            );
          },
          itemCount: _.users.length,
        );
      },
    );
  }
}
