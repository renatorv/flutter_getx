import 'package:flutter_getx/api/users_api.dart';
import 'package:flutter_getx/models/user.dart';
import 'package:flutter_getx/pages/profile_page.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  //variável privadas
  int _counter = 0;
  List<User> _users = [];
  bool _loading = true;

  //métodos para recuperar as variáveis no app
  int get counter => _counter;
  List<User> get users => _users;
  bool get loading => _loading;

  void increment() {
    this._counter++;
    update(['text']);
  }

  Future<void> loadUsers() async {
    //LEMBRAR: data pode ser null
    final data = await UserApi.instance.getUSers(1);
    this._users = data;

    this._loading = false;

    update(['users']);
  }

  @override
  void onReady() {
    super.onReady();
    this.loadUsers();
  }

  Future<void> showUSerProfile(User user) async {
    //arguments: pode ser qq tipo de valor
    final result = await Get.to<String>(
      ProfilePage(), arguments: user,
      // arguments: {'userId': user.id},
    );
    if (result != null) {
      print("😎 Valor: $result");
    } else {
      print("😡🤬😡🤬😡🤬  ");
    }
  }
}

// Instance of 'User'
// aula 8 5:55
// control + command + space
