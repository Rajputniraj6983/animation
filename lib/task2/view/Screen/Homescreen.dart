import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(
          Icons.list,
          color: Colors.white,
        ),
        title: Text(
          'TODO',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
             Icons.search_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, right: 20),
            child: Center(
              child: Text(
                'Hello, John.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          const Text(
            'This is Daily Quote.\nYou have 10 tasks to do Today',
            style: TextStyle(color: Colors.white, fontSize: 15),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/details');
            },
            child: Hero(
              tag: 'box',
              child: Container(
                height: 300,
                width: 290,
                decoration: const BoxDecoration(color: Colors.white),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.alarm,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 100, left: 10),
                      child: Text(
                        '8 Tasks',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Custom',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 30, top: 10),
                      child: LinearProgressIndicator(
                        value: 0.8,
                        color: Colors.red,
                        minHeight: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
