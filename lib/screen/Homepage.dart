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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                List.generate(8,(index) => Draggable(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            border: Border.all(color: Colors.black)),
                      ),
                      feedback:  Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.deepOrange,
                            border: Border.all(color: Colors.black)),
                      ),
                ),
                )
              ],
            ),
            Column(
              children: [
                List.generate(8, (index) =>
                    DragTarget(builder: (context, candidateData, rejectedData) =>  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                        border: Border.all(color: Colors.black)),
                  ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
