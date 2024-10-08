import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postData(email, password) async {
    var response = await crud.postData(AppLink.login, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
