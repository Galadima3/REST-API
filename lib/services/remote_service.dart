import 'dart:convert';

import 'package:rest_api/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  // Future<List<Post>?> getPost() async {
  Future getPost() async {
    var client = http.Client();
    var uri = Uri.parse('http://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
