import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Added padding for horizontal space
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150),
                  Image.asset(
                    "assets/images/splashScreen.jpeg",
                    height: 150, // Adjust the size as needed
                  ),
                  const SizedBox(
                      height: 20), // Add spacing between logo and text
                  const Text(
                    "Jawaharlal Nehru University",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28, // Changed font size for better scaling
                      fontWeight: FontWeight.bold, // Added bold for emphasis
                      color:
                          Color(0xFF6C63FE), // Updated color to match buttons
                    ),
                  ),
                  const SizedBox(height: 40), // Add more spacing for separation
                  // Admin button with fixed width
                  SizedBox(
                    width: 200, // Set a fixed width for all buttons
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.AdminLogin);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor:
                            const Color(0xFF6C63FE), // Updated color here
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Admin",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Spacing between buttons
                  // Professor button with fixed width
                  SizedBox(
                    width: 200, // Set a fixed width for all buttons
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.ProfessorLogin);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor:
                            const Color(0xFF6C63FE), // Updated color here
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Professor",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Spacing between buttons
                  // Student button with fixed width
                  SizedBox(
                    width: 200, // Set a fixed width for all buttons
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.StudentLogin);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor:
                            const Color(0xFF6C63FE), // Updated color here
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Student",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Final spacing for consistency
                ],
              ),
            ),
          ),
        ));
  }
}
