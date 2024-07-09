import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Center(
              child: Text(
            "Game",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          )),
        ),
        body: Padding( 
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ...List.generate(7,(index) => Draggable(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: Colors.red,
                                border: Border.all(color: Colors.black)),
                          ),
                        ),
                        feedback:  Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.black,
                              border: Border.all(color: Colors.black)),
                        ),
                  ),
                  )
                ],
              ),
              Column(
                children: [
                  ...List.generate(7, (index) =>
                      DragTarget(builder: (context, candidateData, rejectedData) =>  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.green,
                            border: Border.all(color: Colors.black)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
