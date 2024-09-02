import 'package:first_app/Widgets/MyDrawer.dart';
import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6C63FE),
          title: Text("Hello World"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Text("Hello Sarth Verma and Dev"),
          ),
        ),
        drawer: MyDrawer());
  }
}
