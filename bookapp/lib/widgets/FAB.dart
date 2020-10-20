import 'package:flutter/material.dart';

class FAButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAB Button Example'),
      ),
      body: Center(
        child: Text('Floating Action Button Screen'),
      ),
      //FAB is a property of the `Scaffold` Widget
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        //Widget to display inside Floating Action Button, can be `Text`, `Icon` or any widget.
        onPressed: () {
          //Code to execute when Floating Action Button is clicked
          //...
        },
      ),
    );
  }
}
