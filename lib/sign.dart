import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
class Signin extends StatefulWidget {
  final String a;
  final String b;
  const Signin({Key key,this.a,this.b}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}
TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController dob = TextEditingController();
TextEditingController phno = TextEditingController();
String x="No result";
String y="No result";

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in"),
      ),
      body: Center(
        child:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset("assets/signin.png",height: 300),
              //Image.network("https://www.iconbunny.com/icons/media/catalog/product/1/6/164.9-register-icon-iconbunny.jpg",height: 80,width: 80,),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: name,
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(prefixIcon: Icon(Icons.account_box),
                    labelText: "Name",
                    hintText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: email,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    hintText: "Enter your Email",
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password",
                    hintText: "Enter your password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: dob,
                  obscureText: false,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.date_range_rounded),
                    labelText: "DOB",
                    hintText: "Enter your DOB",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20,width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: phno,
                  obscureText: false,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: "Phone number",
                    hintText: "Enter your phone number",
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: (){ {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePageScreen()),
                    );
                  }
                    //Navigator.push(context, route)
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child:Text("Sign up",
                      style:TextStyle(color: Colors.white)),
                ),
              ),
            ],

          ),
        ) ,
      ),

    );
  }
}