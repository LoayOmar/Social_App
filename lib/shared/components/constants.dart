import 'package:flutter/material.dart';
import 'package:social_app/modules/social_login/social_login_screen.dart';
import 'package:social_app/shared/components/components.dart';
import 'package:social_app/shared/network/local/cache_helper.dart';

void signOut(BuildContext context) {
  CacheHelper.removeData(key: 'uId').then((value) {
    if (value == true) {
      navigateAndFinish(context, SocialLoginScreen());
    }
  });
}

String? token = '';

String? uId = '';
