import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class LogoutController extends GetxController {
  MyServices myServices = Get.find();

  logout() {
    String userid = myServices.sharedPreferences.getString("id")!;
    FirebaseMessaging.instance.unsubscribeFromTopic('users');
    FirebaseMessaging.instance.unsubscribeFromTopic('users$userid');
    myServices.sharedPreferences.clear();

    Get.offAllNamed(AppRoute.login);
  }
}
