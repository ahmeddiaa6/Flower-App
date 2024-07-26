// import 'package:app/pages/details_screen.dart';
// import 'package:app/pages/home.dart';
// import 'package:app/pages/register.dart';
import 'package:app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:app/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}
