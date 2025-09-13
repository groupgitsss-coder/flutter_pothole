import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:road_pothole/api/regapi.dart';
import 'package:image_picker/image_picker.dart';

class registrasionpage extends StatefulWidget {
  const registrasionpage({super.key});

  @override
  State<registrasionpage> createState() => _registrasionpageState();
}

class _registrasionpageState extends State<registrasionpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String? selectedGender;
  File? imageFile;
  bool isloading = false;
  double? latitude;
  double? longitude;

  Future<void> pickimage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        imageFile = File(picked.path);
      });
    }
  }

  Future<void> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

   
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location services are disabled.')),
      );
      return;
    }

    // Check location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Location permissions are denied')),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location permissions are permanently denied.')),
      );
      return;
    }

    // Get the current position
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      latitude = position.latitude;
      longitude = position.longitude;
      locationController.text = "$latitude, $longitude"; // Optional
    });
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation(); // Fetch location when the screen opens
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('registration'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: pickimage,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: imageFile != null
                      ? FileImage(imageFile!)
                      : null,
                  child: imageFile == null
                      ? const Icon(Icons.camera_alt)
                      : null,
                ),
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "name",
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "email",
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: genderController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "gender",
                ),
              ),

              SizedBox(height: 20),
              TextFormField(
  controller: locationController,
  readOnly: true,
  onTap: () async {
    await getCurrentLocation();
  },
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    labelText: "Tap to get current location",
  ),
),


              SizedBox(height: 20),
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                    labelText: "phone",
                ),
              ),

              SizedBox(height: 20),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "age",
                ),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                items: ['Male', 'Female', 'Other']
                    .map(
                      (gender) => DropdownMenuItem(
                        child: Text(gender),
                        value: selectedGender,
                      ),
                    )
                    .toList(),
                onChanged: (value) => setState(() {
                  selectedGender = value;
                }),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async{
                  FormData data = FormData.fromMap({
                    'name': nameController.text,
                    'email': emailController.text,
                    'gender': genderController.text,
                    'latitude': latitude,
                    'longitude': longitude,
                    'age': ageController.text,
                    'phone': phoneController.text,
                    'image': await MultipartFile.fromFile(imageFile!.path, filename: imageFile!.path.split('/').last), 
                  });
                  regApi(data, context);
                },
                child: Text("login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
