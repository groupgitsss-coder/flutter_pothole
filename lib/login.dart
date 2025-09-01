import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fcvhbjn'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "username"
                ),
          
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "password"
                ),
          
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed:(){} , child: Text("login"))
            ],
          ),
        ),
      ),

    );
  }
}