import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/sign.dart';
import 'package:flutter_health_care_app/forgot.dart';



class Mylogin extends StatefulWidget {
const Mylogin({key}) : super(key: key);

@override
State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
TextEditingController email = TextEditingController(text: "");
TextEditingController pass = TextEditingController(text: "");

  Route<Object> route;

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text("Login"),),
body: Container(


child: SingleChildScrollView(
child: Column(


children: [
SizedBox(height: 30,),
Image.asset("assets/login.png",height: 200,
),


//Image.network(
// 'https://images.drlogy.com/assets/uploads/img/admin/blog/b068d8210a360b9ab1de1ac221fff608.png'),
SizedBox(height: 30),
Padding(
padding: const EdgeInsets.all(8.0),
child: TextField(
controller: email,
obscureText: false,
keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(prefixIcon: Icon(Icons.account_box),
labelText: "Email/Username",
hintText: "Enter you email/username",
border: OutlineInputBorder(),

),
),
),
SizedBox(height: 20),
Padding(
padding: const EdgeInsets.all(8.0),
child: TextField(
controller: password,
obscureText: true,
keyboardType: TextInputType.visiblePassword,
decoration: InputDecoration(prefixIcon: Icon(Icons.lock),
labelText: "Password",
hintText: "Enter your Password",
border: OutlineInputBorder(),

),
),
),

//Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
// {
// return Forget(p1: z);
//}),);

TextButton(onPressed: (
)

{Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
return Forget(p1: z);
}),);},
child: const Text ('Forget Password',),
),

SizedBox(height: 20),
Container(
child: ElevatedButton(
onPressed: (){ {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  HomePageScreen()),
  );
}
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
content: Stack(
children: [
Container(
padding: EdgeInsets.all(16),
height: 80,
decoration: BoxDecoration(color: Colors.blue,
borderRadius: BorderRadius.all(Radius.circular(20)),
),
child: Row(
children: [
const SizedBox(width: 65),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text("Thankyou!",style: TextStyle(fontSize: 20,color: Colors.white),
),
SizedBox(height: 10),
Text("You're Logined",style: TextStyle(
color: Colors.white,
fontSize: 15,
),
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
],
),
),
],
)
),
],
),
behavior: SnackBarBehavior.floating,
backgroundColor: Colors.transparent,
elevation: 0,
)
);

Navigator.push(context, route);
  Navigator.push(
context, MaterialPageRoute(builder: (BuildContext context)
{
return HomePageScreen();
 }
 ),
);
},


style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(Colors.blue)),
child: Text("Login",
style: TextStyle(color: Colors.white)),

),
),
SizedBox(width: 20),
Padding(

padding: const EdgeInsets.all(8.0),
child: Row(
children: [
Container(
child: TextButton(
onPressed: (){
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
content: Stack(
children: [
Container(
padding: EdgeInsets.all(16),
height: 80,
decoration: BoxDecoration(color: Colors.blue,
borderRadius: BorderRadius.all(Radius.circular(20)),
),
child: Row(
children: [
const SizedBox(width: 65),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text("Thankyou!",style: TextStyle(fontSize: 20,color: Colors.white),
),
SizedBox(height: 10),
Text("You can sign in",style: TextStyle(
color: Colors.white,
fontSize: 15,
),
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
],
),
),
],
)
),
],
),
behavior: SnackBarBehavior.floating,
backgroundColor: Colors.transparent,
elevation: 0,
)
);

Navigator.push(
context, MaterialPageRoute(builder: (BuildContext context)
{
return Signin (a: x,b: y);
}
),);
},

style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(Colors.blue)),
child: Padding(
padding: const EdgeInsets.symmetric(vertical: 16),
child: Text("Sign in",
style: TextStyle(color: Colors.white)),
),


),
),
],
mainAxisAlignment: MainAxisAlignment.center,
),
),

SizedBox(width: 20),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
children: [
ElevatedButton(
onLongPress: (){
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
content: Stack(
children: [
Container(
padding: EdgeInsets.all(16),
height: 80,
decoration: BoxDecoration(color: Colors.blue,
borderRadius: BorderRadius.all(Radius.circular(20)),
),
child: Row(
children: [
const SizedBox(width: 65),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text("Thankyou!",style: TextStyle(fontSize: 20,color: Colors.white),
),
SizedBox(height: 10),
Text("Youare signed in as a Guest",style: TextStyle(
color: Colors.white,
fontSize: 15,
),
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
],
),
),
],
)
),
],
),
behavior: SnackBarBehavior.floating,
backgroundColor: Colors.transparent,
elevation: 0,
)
);

// Navigator.push(
// context, MaterialPageRoute(builder: (BuildContext context)
// {
//  return Signin (a: x,b: y);
//}
// ),);
},


style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(Colors.blue)),
child: Text("Sign in as Guest",
style: TextStyle(color: Colors.white)),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  HomePageScreen()),
      );
    }
),
],
mainAxisAlignment: MainAxisAlignment.center,
),

),
]
),

),
),



);
}
}