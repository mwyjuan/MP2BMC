import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "hello bmc flutter",
        home: Scaffold(
            appBar: AppBar(title: Text("hello bmc flutter"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Center(
                child: Column(children: [
                  Text(
                    'hello flutter',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]),
                  ),
                  Text(
                    'Discover the flutter',
                    style: TextStyle(
                        fontSize: 20, color: Colors.deepPurpleAccent),
                  ),
    Image.network('https://th.bing.com/th?id=OVFT.HsqNnMu0w2qe-gBkbJomhy&pid=News&w=300&h=186&c=14&rs=2&qlt=90',
                  height:350,
            ),
                    ElevatedButton(
                      child: Text('Contact Us'),
                      onPressed: () => true
                    )

                ]
                ))));
  }
} //end line of my class

void contactUs(BuildContext context)  {
  showDialog(context: context,
    builder: (BuildContext)
    {
      return AlertDialog(
        title: Text('Contact Us'),
        content: Text('mail us at grc@gmail.com'),
            actions: <Widget>[
              TextButton(
            child: Text('close'),
        onPressed: () => Navigator.of(context).pop(),
        )//textbutton
            ],//action
      );//return

    }//builder
  ); // showdiaglog
} //void contactus
