

    import 'dart:convert';

import 'package:white/services/user_srvices.dart';

import '../models/user.dart';

class UserRepo {
  final UserService userService;
  UserRepo(this.userService);


  Future<List<User>> getUsers() async {
    try {
    var response =  await userService.getUsers();

    if (response.isEmpty) {
      throw Exception('No users found');
    }
    return response;
    } catch (e) {
      // Handle error appropriately, e.g., log it or rethrow
      throw Exception('Failed to load userscccccccccccc: $e');

    }
  }


    }