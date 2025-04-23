import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyTabs()));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      vsync: this,
      length: 3,
    ); // Initialize controller once
  }

  @override
  void dispose() {
    controller.dispose(); // Dispose controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pages"),
        backgroundColor: Colors.deepOrange,
        bottom: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.arrow_forward)),
            Tab(icon: Icon(Icons.arrow_downward)),
            Tab(icon: Icon(Icons.arrow_back)),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: Colors.deepOrange,
        child: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.arrow_forward)),
            Tab(icon: Icon(Icons.arrow_downward)),
            Tab(icon: Icon(Icons.arrow_back)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[First(), Second(), Third()],
      ),
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.accessibility_new, size: 150, color: Colors.brown),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.account_tree_sharp, size: 150, color: Colors.yellow),
    );
  }
}

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.favorite, size: 150, color: Colors.red),
    );
  }
}
