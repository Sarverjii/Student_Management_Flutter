// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // Removes default padding
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Sarth Verma",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "shasha46@jnu.ac.in",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF6C63FE), // Adds background color
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Color(0xFF6C63FE)),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Add navigation logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.person_2_outlined, color: Color(0xFF6C63FE)),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Add navigation logic here
            },
          ),
          Divider(), // Adds a divider for visual separation
          ListTile(
            leading: Icon(Icons.logout, color: Color(0xFF6C63FE)),
            title: Text(
              "Log Out",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.HomePage);
            },
          ),
        ],
      ),
    );
  }
}
