import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text('SMKN4 Mobile Apps'),
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Home')),
            Center(child: Text('Schdule')),
            Center(child: Text('Information')),
            Center(child: Text('Card')),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.schedule), text: "Schdule"),
            Tab(icon: Icon(Icons.info), text: "Information"),
            Tab(icon: Icon(Icons.credit_card), text: "Card"),
          ],
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.blue,
        ),
      ),
    );
  }
}
