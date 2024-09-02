import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loggedIn = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      // Corrected to use `!` after currentState for null safety.
      setState(() {
        _loggedIn = true;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.DashBoard);
      setState(() {
        _loggedIn = false;
      });
    }
  }

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
        child: Form(
          key: _formKey, // Added the form key here.
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Student Login",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFF6C63FE),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/login.png",
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                ),
                const SizedBox(height: 20),
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
                      borderSide:
                          BorderSide(color: Color(0xFF6C63FE), width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 8) {
                      return "Password must be at least 8 characters";
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
                    floatingLabelStyle: TextStyle(fontSize: 24),
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
                SizedBox(height: 20),
                Center(
                  child: Material(
                    color: Color(0xFF6C63FE),
                    borderRadius: BorderRadius.circular(_loggedIn ? 25 : 8),
                    child: InkWell(
                      onTap: () async {
                        moveToHome(context);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: _loggedIn ? 50 : 200,
                        height: 50,
                        alignment: Alignment.center,
                        child: _loggedIn
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.Register);
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
                        "Register Now",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
