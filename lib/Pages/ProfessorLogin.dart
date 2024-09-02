import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class Professorlogin extends StatelessWidget {
  const Professorlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0), // Reduced height for AppBar
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0), // Reduced top padding
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0, // Remove shadow
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFF6C63FE)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.HomePage);
              },
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Professor Login",
                  style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFF6C63FE),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/images/ProfessorLogin.png",
                  fit: BoxFit.cover,
                  height: 250,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Color(0xFF6C63FE)),
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
                    borderSide: BorderSide(color: Color(0xFF6C63FE), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Color(0xFF6C63FE)),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF6C63FE),
                  ),
                  floatingLabelStyle: TextStyle(fontSize: 24),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6C63FE), width: 2),
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
                      Navigator.pushNamed(context, MyRoutes.DashBoard);
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
                      "Login",
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
    );
  }
}
