import 'package:flutter/material.dart';

class Info extends StatefulWidget {

  Info() {

  }

  @override
  _MyInfoState createState() => _MyInfoState();

}

  class _MyInfoState extends State<Info> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body:
      Align(
        alignment: Alignment.topLeft,
        child: ListView(
          children: [
            Text('Device Status:'),
            Text('Device Name: '),
            Text('Battery Level: ' ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }

  void pressedButton() {
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();

  }
}
