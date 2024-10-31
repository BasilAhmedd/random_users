import 'package:flutter/material.dart';
import 'package:random_users/Model/UserModel.dart';
import 'package:random_users/Services/user_api_service.dart';


class UserProvider extends ChangeNotifier{
  UserModel? userModel;

  Future<void> fetchUserData()async{
    userModel = await UserApiService.getData();
    notifyListeners();
  }
}