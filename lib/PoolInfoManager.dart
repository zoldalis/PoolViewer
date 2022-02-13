import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Model/AccountModel.dart';

class PoolInfoManager
{
  PoolInfoManager(this.id);

  String getInfo()
  {
    return "";
    //var response = await fetchAccount();
    //return response;
  }

  Future<AccountModel> fetchAccount() async {
    final response = await http.get(Uri.parse('https://eth.2miners.com/api/accounts/$id'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return AccountModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load account');
    }
  }

  String id;

}

