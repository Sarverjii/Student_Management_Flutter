import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0), // Padding inside the box
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF6C63FE), // Border color
              width: 7.0, // Border width
            ),
            borderRadius: BorderRadius.circular(12.0), // Rounded corners
          ),
          child: Text(
            "Coming\nSoon",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF6C63FE),
                fontSize: 90,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
