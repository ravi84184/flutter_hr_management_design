import 'package:flutter/material.dart';
import 'package:flutter_hr_management/controllers/menu_app_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

/// Let's start to make responsive website
/// First make app responsive class

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuAppController()),
        ],
        child: const HomePage(),
      ),
    );
  }
}
