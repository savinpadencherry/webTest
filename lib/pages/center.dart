import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:test123/services/getData.dart';
import 'package:test123/widgets/post.dart';

class CenterBody extends StatefulWidget {
  List<Post>? posts;
  CenterBody({Key? key, this.posts}) : super(key: key);

  @override
  State<CenterBody> createState() => _CenterBodyState();
}

class _CenterBodyState extends State<CenterBody> {
  List<Post> posts = [];

  getPosts() async {
    await Provider.of<Data>(context, listen: false).getData();
    setState(() {
      posts = Provider.of<Data>(context, listen: false).posts;
    });
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
        children: widget.posts!,
      ),
    );
  }
}
