import 'package:flutter/material.dart';

class registrasionpage extends StatefulWidget {
  const registrasionpage({super.key});

  @override
  State<registrasionpage> createState() => _registrasionpageState();
}

class _registrasionpageState extends State<registrasionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('registration'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "name"
                ),
          
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "email"
                ),
               ),
                SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "gender"
                ),  ),  

                SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "location"
                ),),

                SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "age"
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
    