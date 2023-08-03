import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class callAPI {
  var client = http.Client;
  Future<dynamic> getFun(String api) async {
    var url=Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api"+api);
    http.Response response;
    response = await http.get(url);
    if(response.statusCode==200)
      {
        return response.body;
      }
  }

}
