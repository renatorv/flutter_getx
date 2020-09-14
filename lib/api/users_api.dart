import 'package:dio/dio.dart';
import 'package:flutter_getx/models/user.dart';

class UserApi {
  //transforma a classe em um singleton
  UserApi._internal();
  static UserApi _instance = UserApi._internal();
  static UserApi get instance => _instance;

  final _dio = Dio();

  Future<List<User>> getUSers(int page) async {
    try {
      final Response response = await this._dio.get(
        'https://reqres.in/api/users',
        queryParameters: {
          'page': page,
          'delay': 10,
        },
      );

      return (response.data['data'] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
