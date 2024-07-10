import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Hero(
        tag: 'box',
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.alarm, color: Colors.red),
              SizedBox(height: 40),
              const Text(
                '8 Tasks',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Custom',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 30, top: 5),
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
    );
  }
}