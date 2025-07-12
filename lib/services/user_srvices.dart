
   import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../models/user.dart';
part 'user_srvices.g.dart';
@RestApi(baseUrl:"https://jsonplaceholder.typicode.com/")
    abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @GET("/users")
  Future<List<User>> getUsers();


     }