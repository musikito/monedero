import "package:flutter/material.dart";

import "home/views/home_screen.dart";
class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Monedero",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100,
          onSurface: Colors.black,
          primary: Color(0xFF00B2E7),
          secondary: Color(0xFFE064f7),
          tertiary: Color(0xFFFF8D6C),
          outline: Colors.grey,
        )
      ),
      home: HomeScreen(),
    );
  }
}
