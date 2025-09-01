import 'package:flutter/material.dart';

class feedbackpage extends StatefulWidget {
  const feedbackpage({super.key});

  @override
  State<feedbackpage> createState() => _feedbackpageState();
}

class _feedbackpageState extends State<feedbackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('registration'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "feedback"
                ),
          
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "date"
                ),
               ),
             
          
              
              SizedBox(height: 20,),
              ElevatedButton(onPressed:(){} , child: Text("done"))
            ],
          ),
        ),
      ),

    );
  }
}
    