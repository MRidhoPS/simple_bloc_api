import 'package:bloc_api/model/user_model.dart';
import 'package:dio/dio.dart';

class RemoteDataSource {
  final dio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));

  Future<Data> getUsers() async{
    final response = await dio.get('/unknown');

    return Data.fromJson(response.data);
  }
}