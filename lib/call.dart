import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class MakeCall extends StatefulWidget {
  const MakeCall({Key key}) : super(key: key);

  @override
  State<MakeCall> createState() => _MakeCallState();
}

class _MakeCallState extends State<MakeCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make a Call"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 48,vertical: 12),
            textStyle: TextStyle(fontSize: 24),

          ),
          child: Text('call'),
          onPressed: ()async{
            if (!await launch('tel:+919345744182'))throw 'could not launch';
          },
        ),
      ),

    );
  }

}