import 'package:flutter/material.dart';
class Noti extends StatefulWidget {
  const Noti({Key key}) : super(key: key);

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Text('NOTIFICATIONS',textAlign: TextAlign.center,),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                RichText(text: TextSpan(
                  text: 'Appointed for neurology doctor',
                  style: TextStyle(color: Colors.black,fontSize: 16.0),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Location:Mgr street ,Hosur',
                      style: TextStyle(color: Colors.black,fontSize: 16.0),

                    ),
                  ],
                ),
                )
              ],

            ),
          )
      ),


    );
  }
}
