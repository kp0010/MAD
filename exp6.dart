import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ColorTransitionBox()));

class ColorTransitionBox extends StatefulWidget {
  @override
  _ColorTransitionBoxState createState() => _ColorTransitionBoxState();
}

class _ColorTransitionBoxState extends State<ColorTransitionBox> {
  double progress = 0.0;

  Color get currentColor => Color.lerp(Colors.blue, Colors.yellow, progress)!;

  void changeColor() {
    setState(() {
      progress = (progress + 0.2).clamp(0.0, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blue to Yellow Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: 200,
              height: 200,
              duration: Duration(milliseconds: 500),
              color: currentColor,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeColor,
              child: Text("Make More Yellow"),
            ),
          ],
        ),
      ),
    );
  }
}
