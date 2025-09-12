import 'dart:convert';

import 'package:ecommerce_mobile/model/product.dart';
import 'package:ecommerce_mobile/model/search_result.dart';
import 'package:ecommerce_mobile/model/userActivity.dart';
import 'package:ecommerce_mobile/providers/base_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce_mobile/providers/auth_provider.dart';

class UserActivityProvider extends BaseProvider<UserActivity> {
  UserActivityProvider() : super("UserActivity");

  @override
  UserActivity fromJson(dynamic json) {
    return UserActivity.fromJson(json);
  }
}