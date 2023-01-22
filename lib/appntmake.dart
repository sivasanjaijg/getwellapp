import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/three.dart';
import 'package:lottie/lottie.dart';
class Homeappt extends StatefulWidget {
  const Homeappt({Key key}) : super(key: key);

  @override
  State<Homeappt> createState() => _HomeapptState();
}

class _HomeapptState extends State<Homeappt> {
  TextEditingController name = TextEditingController(text: "");
  TextEditingController date = TextEditingController(text: "");
  TextEditingController phno = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("confirm your Appointment"),
      ),
      body: Center(
        child:SingleChildScrollView(
          padding: EdgeInsets.all(32),


          child:Column(

            children: [
              SizedBox(height: 30,),
             // Lottie.asset('assets/spl.json' ,fit: BoxFit.cover),

               Image.asset('assets/logo.png',height: 200,),
              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(

                  controller: name,
                  obscureText: false,
                  keyboardType: TextInputType.name,

                  decoration: InputDecoration(

                    labelText: "Name",
                    hintText: "Enter your Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: TextField(

                  controller: date,
                  obscureText: false,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Date",
                    hintText: "Enter your available date",
                  ),
                ),
              ),


              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(

                  controller: phno,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    hintText: "Enter your Phone Number",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Notify()),
                );
              }, child: Text('Set Remainder ')),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Stack(
                      children: [
                        Container(
                            padding: EdgeInsets.all(16),
                            height: 80,
                            decoration: BoxDecoration(color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 65),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Congulations!",style: TextStyle(fontSize: 20,color: Colors.white),
                                      ),
                                      SizedBox(height: 10),
                                      Text("Your Appointment got Registered",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
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
                },
                style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child:Text("Register",style: TextStyle(color: Colors.white)),


              ),

            ],
          )


      ),
      ),
    );

  }
}
  
