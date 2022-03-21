import 'package:flutter/material.dart';
import 'package:test123/pages/center.dart';
import 'package:test123/pages/leftCol.dart';
import 'package:test123/pages/rightCol.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.person_add,
          color: Colors.red,
        ),
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              hintText: 'Search Something',
              hintStyle:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: Row(
                children: const [
                  Icon(
                    Icons.add_circle,
                    color: Colors.orange,
                  ),
                  Text(
                    'Add post',
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
              backgroundColor: Colors.white.withOpacity(0.6),
              elevation: 1.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: Row(
                children: const [
                  Icon(
                    Icons.add_circle,
                    color: Colors.green,
                  ),
                  Text(
                    'ShopBuzz',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              backgroundColor: Colors.white.withOpacity(0.6),
              elevation: 1.0,
            ),
          ),
          const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          const SizedBox(width: 8.0),
          const Icon(
            Icons.person,
            color: Colors.black,
          ),
        ],
      ),
      body: Row(
        children: const [
          Expanded(
            child: Column1(),
          ),
          Expanded(
            child: CenterBody(),
          ),
          Expanded(child: RightRow())
        ],
      ),
    );
  }
}

class Column1 extends StatelessWidget {
  const Column1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const ListTile(
          title: Text("Welcome to the community"),
          subtitle: Text("Users online now :  1200"),
        ),
        const ListTile(
          leading: Icon(Icons.person),
          title: Text("Sormy coupon"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              color: Colors.white.withOpacity(0.8),
              width: 150,
              child: Row(
                children: const [
                  Icon(Icons.person),
                  Text("Friends"),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("150"),
                  Icon(Icons.person)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              color: Colors.white.withOpacity(0.8),
              width: 150,
              child: Row(
                children: const [
                  Icon(Icons.person),
                  Text("Follower"),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("59"),
                  Icon(Icons.person)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              color: Colors.white.withOpacity(0.8),
              width: 150,
              child: Row(
                children: const [
                  Icon(Icons.person),
                  Text("messages"),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("59"),
                  Icon(Icons.person)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              color: Colors.white.withOpacity(0.8),
              width: 180,
              child: Row(
                children: const [
                  Icon(Icons.person),
                  Text("Loyalty Coins"),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("109"),
                  Icon(Icons.person)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                      image: AssetImage('car.jpg'),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 10,
                left: 10,
                child: Text(
                  'Car go Zoom Zoom',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                      image: AssetImage('car.jpg'),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 10,
                left: 10,
                child: Text(
                  'Car go Zoom Zoom',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              color: Colors.white.withOpacity(0.8),
              width: 150,
              child: const Text("INTEREST"),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(),
            title: Text('Jack Posted a Video'),
            subtitle: Text('some Latin text'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text('Albert Edmen Posted a Video'),
            subtitle: Text('some Latin text'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
            ),
            title: Text('jenny Posted'),
            subtitle: Text('awesome performance by max once'),
          ),
        ),
      ],
    );
  }
}
