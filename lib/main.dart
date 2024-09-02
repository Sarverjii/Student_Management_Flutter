import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/Pages/Admin_Login.dart';
import 'package:first_app/Pages/ComingSoon.dart';
import 'package:first_app/Pages/Home_Page.dart';
import 'package:first_app/Pages/ProfessorLogin.dart';
import 'package:first_app/Pages/Register.dart';
import 'package:first_app/Pages/Student_Login.dart';
import 'package:first_app/Pages/Splash_Screen.dart';
import 'package:first_app/utils/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAe9Dn9Y3MieBrFZZNNsQ3tk8xqpE82QcQ",
            appId: "1:721866067073:web:b820dfb3ab3f31f50ed180",
            messagingSenderId: "721866067073",
            projectId: "jnustudents-2effc"));
  }

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.HomePage,
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: {
          MyRoutes.HomePage: (context) => SplashScreen(),
          MyRoutes.StudentLogin: (context) => LoginPage(),
          MyRoutes.DashBoard: (context) => Home_Page(),
          MyRoutes.ComingSoon: (context) => ComingSoon(),
          MyRoutes.AdminLogin: (context) => AdminLogin(),
          MyRoutes.ProfessorLogin: (context) => Professorlogin(),
          MyRoutes.Register: (context) => Register()
        });
  }
}
