import 'dart:convert';

import 'package:bloc_postapi_demo/models/login_model.dart';
import 'package:http/http.dart';

class LoginRepository {
  String endpoint = 'https://reqres.in/api/users?page=2';

  Future<List<LoginModel>> getUsers() async {
    Response response = await post(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => LoginModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
