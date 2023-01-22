import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';

class Stores extends StatefulWidget {
  const Stores({Key key}) : super(key: key);

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NOTIFICATIONS"),
        backgroundColor: Colors.blue,
      ), // AppBar
      // App body consists of single Column
      // Column consists of three children widgets
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.redAccent),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Make Your Appointments Easier",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.redAccent),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Check Doctors Availability",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.redAccent),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Remember Your Appointments",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.redAccent),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Get Ready for your Appointments",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ), // Column




    );
  }

}
