import 'package:flutter/material.dart';

class TransformingWidget extends StatefulWidget {
  const TransformingWidget({Key? key}) : super(key: key);

  @override
  State<TransformingWidget> createState() => _TransformingWidgetState();
}

class _TransformingWidgetState extends State<TransformingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Transform.rotate(
            angle: .67,
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 130,
                width: 130,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Box 1",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              "Hello",
              style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Transform.scale(
                scale: 0.7,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "Box 2",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Draggable(
                childWhenDragging: Material(
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.lightBlueAccent,
                    child: Center(
                      child: Text(
                        "Behind",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                feedback: Material(
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.greenAccent,
                    child: Center(
                      child: Text(
                        "Dragged",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                child: Transform.scale(
                  scale: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Box 2",
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Transform.scale(
                scale: 1.5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "Box 2",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Transform.translate(
            offset: Offset(50,-20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 130,
                width: 130,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Box 3",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
