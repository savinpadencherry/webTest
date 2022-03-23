import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test123/widgets/post.dart';

class Data with ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts {
    return _posts;
  }

  getData() async {
    var url = Uri.parse(
        'https://apidev.cohora.net/post/v1/feed?feedOrigin=ALL_ACTIVITY&page=1&perPage=5');
    try {
      final response = await http.get(url);
      final responseData = json.decode(response.body)['items'];
      List<Post> post = [];
      responseData.forEach((value) {
        post.add(Post(
          name: value['userInfo']['name'],
          surname: value['userInfo']['surname'],
          photoUrl: value['userInfo']['photoUrl'],
          text: value['text'],
        ));
      });
      print(responseData);
      _posts = post;
      print(_posts.length);
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
