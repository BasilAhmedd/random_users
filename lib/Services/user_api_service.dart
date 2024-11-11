import 'package:dio/dio.dart';
import 'package:random_users/Model/UserModel.dart';

class UserApiService {
  static Dio dio = Dio();

  static Future<UserModel> getData() async {
    try {
      const String url = "https://randomuser.me/api/?results=5";
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load ");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
