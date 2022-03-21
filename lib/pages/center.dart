import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test123/widgets/post.dart';

class CenterBody extends StatefulWidget {
  const CenterBody({Key? key}) : super(key: key);

  @override
  State<CenterBody> createState() => _CenterBodyState();
}

class _CenterBodyState extends State<CenterBody> {
  List<Post> posts = [];

  Future<void> getPosts() async {
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
      setState(() {
        posts = post;
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: ListView(
          children: posts,
        ));
  }
}
