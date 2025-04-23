import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 300;
  double width = 300;
  double changeXaxis = 0;
  double rotateX = 0;
  double rotateY = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              transform: Matrix4.translationValues(changeXaxis, 0, 0)
                ..rotateX(rotateX)
                ..rotateY(rotateY),
              height: height,
              width: width,
              color: Colors.blue,
            ),
            SizedBox(height: 20), // Add some spacing between the button and container
            TextButton(
              child: Text("Animate me"),
              onPressed: () {
                setState(() {
                  height = height - 100;
                  width = width - 100;
                  changeXaxis += 20;
                  rotateX = 0.3;  // Rotate around the X-axis
                  rotateY = 0.3;  // Rotate around the Y-axis
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
