import 'package:flutter_health_care_app/login.dart';
import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  final String p1;
  const Forget({Key key,this.p1}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();

}
TextEditingController email = TextEditingController();
TextEditingController pswd = TextEditingController();
TextEditingController pswd1 = TextEditingController();

String z = "Password";

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset("assets/forgetzs.jpg",height: 200),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mark_email_read_rounded),
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
                controller: pswd,
                obscureText: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: "New Password",
                  hintText: "Enter your name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pswd1,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  hintText: "Enter your Password again",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
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
                                          Text("Successfully!",style: TextStyle(fontSize: 20,color: Colors.white),
                                          ),
                                          SizedBox(height: 10),
                                          Text("Password got updated",style: TextStyle(
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
                        return Mylogin ();
                      }
                      ),
                      );
                    },


                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue)),
                    child: Text("Reset Password",
                        style: TextStyle(color: Colors.white)),

                  ),

                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}