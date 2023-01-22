import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:date_time_picker/date_time_picker.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int id;
  final String title;
  final String body;
  const MyApp({Key key,this.id,this.title,this.body}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Well',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}

class Notify extends StatefulWidget {

@override
State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  void initState() {
    intialize();
    super.initState();
  }

  var dtime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule Your Appointment"),

      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () async {
                  await showNotification(
                      id: 1, title: "Remember Your Appointment", body: "Take Care");
                },
                child: Text("show Appointments",

                ),

              ),
              DateTimePicker(
                type: DateTimePickerType.dateTime,
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                onChanged: (val) {
                  // print(val + "onChanged");
                  setState(() {
                    dtime = val;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  showscheduleNotification();
                },
                child: Text("schedule Appointment"),
               // style: ButtonStyle( color: Colors.red,),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final _localNotificationservice = FlutterLocalNotificationsPlugin();

  Future<void> intialize() async {
    AndroidInitializationSettings androidInitializationSettings =
    AndroidInitializationSettings("@mipmap/ic_launcher");
    InitializationSettings settings =
    InitializationSettings(android: androidInitializationSettings);

    await _localNotificationservice.initialize(settings);
  }

  Future<NotificationDetails> _notificationDetails() async {
    const AndroidNotificationDetails androidNotificationDetails =
    AndroidNotificationDetails(
      '1',
      ' Get Well',
      channelDescription: 'description',
      importance: Importance.max,
      priority: Priority.max,
    );

    return const NotificationDetails(
      android: androidNotificationDetails,
    );
  }

  Future<void> showNotification(
      { int id,  String title,  String body}) async {
    final details = await _notificationDetails();
    await _localNotificationservice.show(id, title, body, details);
  }

  Future<void> showscheduleNotification() async {
    final moonLanding = DateTime.parse(dtime);
    final details = await _notificationDetails();
    // ignore: deprecated_member_use
    await _localNotificationservice.showDailyAtTime(
      0,
      'Make Your Appointments',
      'Thank you',
      Time(
        moonLanding.hour,
        moonLanding.minute,
        moonLanding.second,
      ),
      details,
    );
  }
}