import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  File? _profileImage;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String? _imageError; // To store image error message

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
        _imageError = null; // Reset image error when a new image is picked
      });
    }
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFF6C63FE),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: _profileImage != null
                          ? FileImage(_profileImage!)
                          : null,
                      child: _profileImage == null
                          ? Icon(Icons.add_a_photo,
                              color: Colors.white, size: 40)
                          : null,
                    ),
                  ),
                ),
                if (_imageError !=
                    null) // Display error message if image is not selected
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      _imageError!,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                const SizedBox(height: 40),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username cannot be empty";
                    } else if (value.length < 6) {
                      return "Username must be at least 6 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.person_outline, color: Color(0xFF6C63FE)),
                    hintText: "Enter your username",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    labelText: "Username",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF6C63FE),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6C63FE), width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Registration number cannot be empty";
                    } else if (value.length != 12) {
                      return "Registration number must be exactly 12 digits";
                    } else if (!RegExp(r'^\d{12}$').hasMatch(value)) {
                      return "Registration number must contain only numbers";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.assignment_ind, color: Color(0xFF6C63FE)),
                    hintText: "Enter your registration number",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    labelText: "Registration Number",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF6C63FE),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6C63FE), width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "University email cannot be empty";
                    } else if (!RegExp(r'^[\w-\.]+@jnu\.ac\.in$')
                        .hasMatch(value)) {
                      return "Email must end with @jnu.ac.in";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Color(0xFF6C63FE)),
                    hintText: "Enter your university email",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    labelText: "University Email",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF6C63FE),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6C63FE), width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Color(0xFF6C63FE)),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF6C63FE),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6C63FE), width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please confirm your password";
                    } else if (value != _passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.lock_outline, color: Color(0xFF6C63FE)),
                    hintText: "Confirm your password",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF6C63FE),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF6C63FE), width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate if profile image is selected
                        if (_profileImage == null) {
                          setState(() {
                            _imageError = "Profile photo is required";
                          });
                          return; // Return early if image is not selected
                        }

                        // Validate the form
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, MyRoutes.StudentLogin);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        backgroundColor: Color(0xFF6C63FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
