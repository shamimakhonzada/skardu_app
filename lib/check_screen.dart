import 'package:flutter/material.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomAppBar Example")),
      body: Center(child: Text("Content Here")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // Enables the notch
        notchMargin: 6.0, // Space around the notch
        color: Colors.lightGreen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            IconButton(icon: Icon(Icons.pause), onPressed: () {}),
            IconButton(icon: Icon(Icons.stop), onPressed: () {}),// Space for notch
            IconButton(icon: Icon(Icons.access_time), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
