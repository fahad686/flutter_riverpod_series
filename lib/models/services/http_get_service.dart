import 'dart:convert';
import 'dart:developer';
import 'package:flutter_riverpod_series/models/post_model.dart';
import 'package:http/http.dart' as http;

class HttpGetPost {
  // define static url and endpoint
  static const String _baseUrl = "https://jsonplaceholder.typicode.com";
  static const String _postEndPoint = "/posts";

/////creating a list to stroing data
  List<PostModel> postList = [];

  // create function for calling api
  Future<List<PostModel>> getPosts() async {
    try {
      //get response
      final response = await http.get(Uri.parse("$_baseUrl$_postEndPoint"));
      //create dynamic variable to store api data
      print(response.body.runtimeType);
      dynamic data = jsonDecode(response.body);
      print("after ${data.runtimeType}");
      if (response.statusCode == 200) {
        //creating for loop storing model data to list
        for (dynamic i in data) {
          postList.add(PostModel.fromJson(i));
        }
        return postList;
      } else {
        return postList;
      }
    } catch (e) {
      log(e.toString());
    }
    return postList;
  }
}
