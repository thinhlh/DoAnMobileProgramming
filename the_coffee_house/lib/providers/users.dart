import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:the/models/custom_user.dart';
import 'package:the/services/users_api.dart';

class Users with ChangeNotifier {
  List<CustomUser> _users = [];

  List<CustomUser> get users {
    return [..._users];
  }

  Users.fromList(this._users);

  Future<void> fetchAndUpdateUsersInfo() async {
    for (var user in _users) {
      try {
        print('Should implement fetching method here');
        // final Map<String, Object> result =
        //     await UsersAPI().getUserInfo(user.uid);

        // user.lastSignIn = DateFormat(_formatPattern)
        //     .parse((result['metadata'] as Map)['lastSignInTime'], true);
        // user.registerDate = DateFormat(_formatPattern)
        //     .parse((result['metadata'] as Map)['creationTime'], true);

        //user.totalOrders = result['totalOrders'] ?? 0;
      } catch (e) {
        return;
      }
    }
    return true;
  }

  CustomUser getUserById(String id) {
    return [..._users]
        .firstWhere((element) => element.uid == id, orElse: () => null);
  }

  Future<void> deleteUser(String id) async {
    return UsersAPI().delete(id);
  }

  List<CustomUser> searchUser(String query) {
    return [..._users].where((user) {
      String queryLowerCase = query.trim().toLowerCase();
      return user.email.trim().toLowerCase().contains(queryLowerCase) ||
          user.uid.trim().toLowerCase().contains(queryLowerCase) ||
          user.email.trim().toLowerCase().contains(queryLowerCase);
    }).toList();
  }
}
