import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String? name;
  final String? surname;
  final String? photoUrl;
  final String? text;

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      name: json['name'],
      surname: json['surname'],
      photoUrl: json['photoUrl'],
      text: json['text'],
    );
  }

  Map<String, dynamic> toJson() =>
      {'name': name, 'surname': surname, 'photoUrl': photoUrl, 'text': text};

  const Post({Key? key, this.name, this.photoUrl, this.surname, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(
                  0.2,
                ),
                spreadRadius: 8,
                blurRadius: 5,
                offset: const Offset(
                  0,
                  1,
                ), //
              ),
            ]),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.network('$photoUrl'),
              ),
              title: Text('$name'),
              subtitle: Text('$surname'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$text'),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Image.network(
                '$photoUrl',
                height: 200,
                width: 150,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
