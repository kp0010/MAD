import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Colors.blue[600],
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Thank you');
          },
          child: Text('OK', style: TextStyle(fontSize: 12)),// or Icon(Icons.add), etc.
          backgroundColor: Colors.blue[600],
        ),
      ),
    ),
  );
}

