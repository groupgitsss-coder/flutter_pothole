import 'package:flutter/material.dart';

class issuespage extends StatefulWidget {
  const issuespage({super.key});

  @override
  State<issuespage> createState() => _issuespageState();
}

class _issuespageState extends State<issuespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('issues'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "contractor",
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
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "description",
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
