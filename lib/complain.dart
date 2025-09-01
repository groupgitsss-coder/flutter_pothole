import 'package:flutter/material.dart';

class complainpage extends StatefulWidget {
  const complainpage({super.key});

  @override
  State<complainpage> createState() => _complainpageState();
}

class _complainpageState extends State<complainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('registration'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "complaint"
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
    