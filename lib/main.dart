import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF282A36),
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text('Contact'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/linkedinebne.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Emre Ertekin'.toUpperCase()),
              SizedBox(
                height: 15.0,
                width: 200.0,
                child: Divider(
                  color: Colors.green,
                ),
              ),
              Text('Bogazici Universitesi'.toUpperCase()),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  title: Text('+905312345678'),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  title: Text('emrertkn99@gmail.com'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}