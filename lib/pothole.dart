import 'package:flutter/material.dart';

class potholepage extends StatefulWidget {
  const potholepage({super.key});

  @override
  State<potholepage> createState() => _potholepageState();
}

class _potholepageState extends State<potholepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('contractor'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "lattitude",
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "longitude",
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "date",
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text("done")),
            ],
          ),
        ),
      ),
    );
  }
}
