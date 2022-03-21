import 'package:flutter/material.dart';

class RightRow extends StatefulWidget {
  const RightRow({Key? key}) : super(key: key);

  @override
  State<RightRow> createState() => _RightRowState();
}

class _RightRowState extends State<RightRow> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: 250,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
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
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  title: Text('Red Bull'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  title: Text('Louis Vitton'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange,
                  ),
                  title: Text('Nintendo'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  child: Text('Show more'),
                  alignment: Alignment.centerLeft,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
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
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/car.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Current Contest Title',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          'First Prize',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      FloatingActionButton.extended(
                        backgroundColor: Colors.orange,
                        onPressed: () {},
                        label: Text('Prize'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 250,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
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
            children: const [
              ListTile(
                title: Text(
                  'Chat Room',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.share),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text('Special Room'),
                    subtitle: Text('Talk about brand'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text('Special Room'),
                    subtitle: Text('Talk about something'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text('Special Room'),
                    subtitle: Text('Talk about something2'),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
